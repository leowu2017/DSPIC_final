point = 16;
bits = 32;

twiddle_factors = exp(-2j*pi*(0:point)-1/point);
real_parts = real(twiddle_factors);
imaginary_parts = imag(twiddle_factors);

LUT_real = repmat(' ',length(real_parts),1);
LUT_imag = repmat(' ',length(imaginary_parts),1);

for index = 1:length(real_parts)
    LUT_real(index,1:bits) = float_to_bin(real_parts(index));
    LUT_imag(index,1:bits) = float_to_bin(imaginary_parts(index));
end

LUT_real
LUT_imag