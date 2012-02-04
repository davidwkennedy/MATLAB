function [bit1, bit2, bit3, bit4, bit5,bit6, bit7, bit8] = bitSlice(Input)

% Bit 1 is the least significant bit
% Bit 8 is the most significant bit

if (size(Input, 3) == 3)
    Input = rgb2gray(Input);
end

bit1 = bitget(Input, 1);
bit2 = bitget(Input, 2);
bit3 = bitget(Input, 3);
bit4 = bitget(Input, 4);
bit5 = bitget(Input, 5);
bit6 = bitget(Input, 6);
bit7 = bitget(Input, 7);
bit8 = bitget(Input, 8);
