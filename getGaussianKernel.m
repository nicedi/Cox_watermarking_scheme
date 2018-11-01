function kernel = getGaussianKernel(sigma)
    max = 1/(2*pi*sigma^2);
    flag = max;
    x = 0;
    while flag > max*0.05
       x = x+1;
       flag = exp(-x^2/(2*sigma^2))/(2*pi*sigma^2);
    end
    X = -x:x;
    Y = X;
    [A B] = meshgrid(X,Y);
    kernel = exp(-(A.^2+B.^2)/(2*sigma^2))/(2*pi*sigma^2);
    
end
