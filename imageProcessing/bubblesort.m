function [input1, input2, input3] = bubblesort(input1, input2, input3)

% Bubblesort can be used to sort of shuffle arrays. 
% If ONE array is given, it will sort that array.
% If TWO arrays are given, it will sort the first and make corresponding
%       switches to the second array, thus shuffling it.
% If THREE arrays are given, it will sort the first and make the
%       corresponding switches in the second and third arrays, thus
%       shuffling them.

swapped = 1;
length = size(input1,2);

% If sorting only one array
if (nargin == 1)
    while swapped == 1
        swapped = 0;
        for i = 1:length-1
            if (input1(i) > input1(i+1))
                temp = input(i);
                input1(i) = input1(i+1);
                input1(i+1) = temp;
                swapped = 1;
            end
        end
    end

% If sorting an input array and a parallel array.
elseif (nargin == 2)
    while swapped == 1
        swapped = 0;
        for i = 1:length-1
            if (input1(i) > input1(i+1))
                temp = input1(i);
                temp2 = input2(i);
                input1(i) = input1(i+1);
                input2(i) = input2(i+1);
                input1(i+1) = temp;
                input2(i+1) = temp2;
                swapped = 1;
            end
        end
    end

% If we're sorting one array, and shuffling two input arrays
else
    while swapped == 1
        swapped = 0;
        for i = 1:length-1
            if (input1(i) > input1(i+1))
                
                temp1 = input1(i);
                temp2 = input2(i);
                temp3 = input3(i);
                
                input1(i) = input1(i+1);
                input2(i) = input2(i+1);
                input3(i) = input3(i+1);
                
                input1(i+1) = temp1;
                input2(i+1) = temp2;
                input3(i+1) = temp3;
                
                swapped = 1;
            end
        end
    end
end