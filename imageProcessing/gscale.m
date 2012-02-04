function output = gscale(input, varargin)

%
%GSCALE Scales the intensity of the input image
% G = GSCALE(input, 'full8') scales the intensities of input to the full
% 8-bit intensity range [0,255]. This is the default if there is only one
% input argument.
%
% G = GSCALE(input, 'full16') scales the intensities of input to the full
% 16-bit intensity range [0.65536].
%
% G = GSCALE(input, 'minmax', LOW, HIGH) scales the intensities of input to
% the range [LOW, HIGH]. These values must be provided, and they must be in
% the range [0,1], independently of the class of input. GSCALE performs any
% necessary scaling. If the input is of class double, and its values are
% not in the range [0,1], then GSCALE scales it to this range before
% processing.
%
% The class of the output is the same as the class of the input
%

if length(varargin) == 0 % If only one argument it must be input
    method = 'full8';
else
    method = varargin{1};
end

if strcmp(class(input), 'double') & max(input(:)) > 1 | min(input(:) < 0)
    input = mat2gray(input);
end

% Perform the specified scaling
switch method
    case 'full8'
        output = im2uint8(mat2gray(double(input)));
    case 'full16'
        output = im2uint16(mat2gray(double(input)));
    case 'minmax'
        low = varargin{2}; high = varargin{3};
        if low > 1 | low < 0 | high > 1 | high < 0
            error('Parameters low and high must be in the rage [0,1]')
        end
        if strcmp(class(input), 'double')
            low_in = min(input(:))
            high_in = max(input(:));
        elseif strcmp(class(input), 'uint8')
            low_in = double(min(input(:)))./255;
            high_in = double(max(input(:)))./255;
        elseif strcmp(class(input), 'uint16')
            low_in = double(min(input(:)))./65535;
            high_in = double(min(input(:)))./65535;
        end
        % imadjust automatically matches the class of the input
        output = imadjust(input, [low_in high_in], [low high]);
    otherwise
        error('Unknown Method')
end
