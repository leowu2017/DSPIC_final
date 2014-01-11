function r = float_to_bin(num)
exponent_bit = 8;
fraction_bit = 23;
bias = 127;

exponent = 0;

if(num >= 0)
    bit = '0';
else
    bit = '1';
end
num = abs(num);

count = 0;
while(num>=2 && count<bias)
    num = num/2;
    exponent = exponent+1;
    count = count + 1;
end

while(num < 1 && count<bias)
    num = num*2;
    exponent = exponent-1;
    count = count + 1;
end
exponent = dec2bin(exponent+bias,exponent_bit);
num = num - 1;

fraction = '';
for i=1:fraction_bit
    if(num >= 2^-i)
        num = num - 2^-i;
        fraction(i) = '1';
    else
        fraction(i) = '0';
    end
end

r = [bit,exponent,fraction];

end