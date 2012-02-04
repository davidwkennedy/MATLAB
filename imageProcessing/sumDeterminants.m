function [totalSum, Beta] = sumDeterminants(Input, seed)

% Input = Watermarked Image

if nargin == 1
    seed = 20;
end

Beta = ones(size(Input));

numberMinutiae = 40;
numberBits = numberMinutiae * 3 * 9;
[rowPositions, colPositions] = generateRandomPositions(numberMinutiae, Input, seed);

position = 0;
for bit = 1:numberBits
    position = position + 1;
    if (checkVicinity(Beta, rowPositions(position), colPositions(position)) == 1)
        determinants(position) = calculateDeterminant(Input, rowPositions(position), colPositions(position));
        Beta = markPixels(Beta, rowPositions(position), colPositions(position));
    end
end

totalSum = 0;
numberDeterminants = size(determinants, 2);
for i = 1:numberDeterminants
    totalSum = totalSum + determinants(i);
end
