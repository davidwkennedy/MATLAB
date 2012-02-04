function output = xorImages(In1, In2)

output = zeros(size(In1));

rowSize = size(In1, 1);
colSize = size(In1, 2);

for row = 1:rowSize
    for column = 1:colSize
        output(row, column) = xor(In1(row, column), In2(row, column ));
    end
end