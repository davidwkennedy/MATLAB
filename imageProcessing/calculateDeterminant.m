function determinant = calculateDeterminant(Input, row, column)

% Calculate the determinant in the 3x3 neighborhood of a given cell.

[rowStart, rowEnd, colStart, colEnd] = setBounds(Input, row, column);

tempMatrix = Input(rowStart:rowEnd,colStart:colEnd);
tempMatrix = double(tempMatrix);

determinant = det(tempMatrix);
