function h = hilbert(x)
%Hilbert transform using direct fft and ifft
%   Hilbert(x) = ifft[fft(x)*2U] = x + yi
    fx = fft(x);
    n = length(x);
    h = getH(n);
    h = ifft(h.*fx);
end

function h = getH(n)
    h = zeros(1, n);
    h(2:1:floor(n/2)) = 2;
    h(1) = 1;
    h(floor(n/2) + 1) = 1;
end

