function cover = insertIntoLSB(cover, stego)

[bit1, bit2, bit3, bit4, bit5, bit6, bit7, bit8] = bitSlice(cover);

cover= bitset(cover, 1, stego);
cover = bitset(cover, 2, bit2);
cover = bitset(cover, 3, bit3);
cover = bitset(cover, 4, bit4);
cover = bitset(cover, 5, bit5);
cover = bitset(cover, 6, bit6);
cover = bitset(cover, 7, bit7);
cover = bitset(cover, 8, bit8);
