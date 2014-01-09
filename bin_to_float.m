% %     (IEEE754 Single precision 32-bit) to Decimal converter
function r = bin_to_float(str)

if ischar(str)~=1
    error('Input must be a string.');
end
if length(str)~=32
    error('String must be 32-bit.');
end

b = zeros(1,32);
b(:) = str2num(str(:));
exponent = b(2:9);
significant = b(10:32);
bias = 127;
M = 2^(bin2dec(num2str(exponent))-bias);
sum = M;
for i = 1:23
    if significant(i)==1
        sum = sum + M*2^(-i);
    end
end
r = sum;
if b(1)==1
    r = -r;
end