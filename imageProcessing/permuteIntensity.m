function Lp = permuteIntensity(seed)

for i = 1:255
    L(i) = i;
end

if nargin == 0
    seed = 20;
end

rand('seed', seed);
key = rand(1,255);
[key, Lp] = bubblesort(key, L);