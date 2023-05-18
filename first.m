% first of all load the package, make sure its installed.
pkg load symbolic
% make symbols module available

% define symbolic variables
x = sym ('x');
y = sym ('y');
z = sym ('z');
% expanding equations
expand((x-5)*(x+9))
expand((x+2)*(x-3)*(x-5)*(x+7))
expand(Sin(2*x))
expand(Cos(x+y))
% collecting equations
collect(x^3 *(x-7), z)
collect(x^4*(x-3)*(x-5), z)

