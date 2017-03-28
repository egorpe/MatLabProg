function pileibnizgood
% Approximates pi using Leibniz' formula, until the
% approximation is "good", within 0.05
% Format of call: pileibnizgood or pileibnizgood()
% Does not return any values
 
fprintf('Approximate pi using Leibiz'' formula\n')
i = 0;
approxpi = 0;
denom = -1;
termsign = -1;
while (abs(pi-approxpi) > .05)
    i = i + 1;
    denom = denom + 2;
    termsign = -termsign;
    approxpi = approxpi + termsign * (4/denom);
end
fprintf('An approximation of pi is %.2f\n', ...
    approxpi)
fprintf('This took %d terms.\n', i)
end
