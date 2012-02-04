function [out1, out2] = xorSelfImages(In1, In2)

out1 = zeros(size(In1));
out2 = zeros(size(In2));


rowSize = size(In1, 1);
colSize = size(In1, 2);


[bit1, bit2, bit3, bit4, bit5, bit6, bit7, bit8] = bitSlice(In1);
for row = 1:rowSize
    for column = 1:colSize
        resultBit = xor(bit1(row, column), bit2(row, column));
        resultBit = xor(resultBit, bit3(row, column));
        resultBit = xor(resultBit, bit4(row, column));
        resultBit = xor(resultBit, bit5(row, column));
        resultBit = xor(resultBit, bit6(row, column));
        resultBit = xor(resultBit, bit7(row, column));
        resultBit = xor(resultBit, bit8(row, column));
        out1(row, column) = resultBit;
    end
end


[bit1, bit2, bit3, bit4, bit5, bit6, bit7, bit8] = bitSlice(In2);
for row = 1:rowSize
    for column = 1:colSize
        resultBit = xor(bit1(row, column), bit2(row, column));
        resultBit = xor(resultBit, bit3(row, column));
        resultBit = xor(resultBit, bit4(row, column));
        resultBit = xor(resultBit, bit5(row, column));
        resultBit = xor(resultBit, bit6(row, column));
        resultBit = xor(resultBit, bit7(row, column));
        resultBit = xor(resultBit, bit8(row, column));
        out2(row, column) = resultBit;
    end
end

