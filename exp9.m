1;
 function xdot = f (x, t)

 r = 0.25;
 k = 1.4;
 a = 1.5;
 b = 0.16;
 c = 1.2;
 d = 0.8;

 xdot(1) = r*x(1)*(1 - x(1)) ;
 xdot(2) = c*a*x(1);

endfunction

x0 = [1; 2];
t = linspace (0, 50, 200)';
x = lsode ("f", x0, t);
plot (t, x)
