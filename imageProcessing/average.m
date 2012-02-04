function output = average(input, row, column)

% This function is used to find the average of pixels in the neighborhood of
% (i,j) in an image. This average is calculated using a 3x3 square. 
% This does not include the center cell.


% 1. Make sure that we don't go out of range of the image
% 2. Now Calculate The Total - Sum Up All the Values
% 3. Exclude The Center Cell.
% 4. And Divide By The Total Number of Cells
%    And subtract 1 because I didnt' include the middle cell.
% 5. Finally, Return The Average

[rowStart, rowEnd, colStart, colEnd] = setBounds(input, row, column);

runningTotal = 0;
for i = colStart:colEnd
    for j = rowStart:rowEnd
        runningTotal = runningTotal + double(input(j,i));
    end
end

runningTotal = runningTotal - (1 * double(input(row,column)));
numberOfCells = (rowEnd - rowStart + 1) * (colEnd - colStart + 1) - 1;

output = runningTotal / numberOfCells;








