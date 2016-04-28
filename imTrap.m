% function y = imTrap ( a , b , k , n , y0 , f )
%
% uses Trapezoidal method to compute solution to IVP
%
% y ’ = f ( t , y ) , a <= t <= b
% y(a) = y0
%
% inputs:
% a,b   time interval to compute solution
% k     number o f time steps to take inside [ a , b ]
% y0    initial condition at t=a
% f     function handle, for example
%
% f = @( t , y ) t ˆ2 + y / 2 ;
%
% outputs:
% y     vector of size n+1 y(i) contains the approximation to
% y(a + (i −1)∗h ), for i = 1 ,..., n+1, with h=(b−a)/n
%
function y= imTrap(a,b,k,n,y0,B)
  I = speye(2*nˆ2);
  y = zeros(2*n^n,1,k);
  y(:,:,1)=y0;