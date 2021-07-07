function w = hamming(L, varargin)
%hann generate a hanning window with a length of L
%   This is generated with a function w(n) = 0.54 - 0.46cos(2\pi\frac{n}{N})), 0<=n<=N
%   Please see more details at website:https://www.mathworks.com/help/signal/ref/hamming.html
    ip = inputParser;
    ip.addParameter('sflag', 'periodic', @(x) any(validatestring(x, {'symmetric', 'periodic'})));
    ip.parse(varargin{:})
    
    n = 0:1:L;
    n = n';
    w = 0.54 - 0.46 * cos((2*pi).*(n/L));
    if strcmp(ip.Results.sflag,'periodic') == 1
        w = w(1:L);
    end
end

