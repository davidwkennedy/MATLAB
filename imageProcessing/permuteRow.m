function Rp = permuteRow(Input, seed)

rowSize = size(Input, 1);

for i = 1:rowSize
    R(i) = i;
end

if nargin == 1
    seed = 20;
end

rand('seed', seed);
key = rand(1,rowSize);
[key, Rp] = bubblesort(key, R);