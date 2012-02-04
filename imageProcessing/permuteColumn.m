function Cp = permuteColumn(Input, seed)

colSize = size(Input, 2);

for i = 1:colSize
    C(i) = i;
end

if nargin == 1
    seed = 20;
end

rand('seed', seed);
key = rand(1,colSize);
[key, Cp] = bubblesort(key, C);