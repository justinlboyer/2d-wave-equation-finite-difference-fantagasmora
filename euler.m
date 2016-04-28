% function y = euler (a, b, k, y0, f)
%
% uses Euler's method to compute solution to initial value problem
%
% y' = f(t,y), a <= t <= b
% y(a) = y0
%
% inputs:
% a,b   time interval used to compute solution
% k   number of time steps to take between [a,b]
% y0  initial condition at t=a
% f   function handle, for example
%                 
%   f = @(t, y) t^2 + y/2

% outputs
% y   vector of size n+1 y(i) contains the approximation to
%     y(a + (i-1)+h), for i=1,...,n+1, with h= (b-a)/n
%
function y = euler(a,b,k,n,y0,f)
