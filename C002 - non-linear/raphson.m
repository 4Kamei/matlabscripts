function root = raphson(f, in)

root = in;
prev = in - 1000000;

%if small difference betweewn values then we converge
while abs(root - prev) > 0.0000001 
    disp 2
    prev = root;
    
    %definition of derivative
    e = 1e-10;
    d = (f(root + e) - f(root))/e;
    
    root = prev - f(root) / d;
    
end
    