%PLOT 2D

%   x = linspace(0,5*pi,100);
%   y = sin(x);
%   plot(x,y)
%   hold on 
%   y2 = cos(x);
%   plot(x,y2)
%   hold off


%  x = [1 2 3 4 5];
%  y = [2 4 1 5 3];
%  plot(x, y, 'b:', 'LineWidth', 1.5); 
%  xlabel('Time (seconds)');
%  ylabel('Voltage (V)');
%  title('Voltage vs. Time');
%  grid on;
%  legend('Measured Voltage');

%  [X, Y] = meshgrid(-2:0.1:2, -2:0.1:2);
%  Z = sin(X).*cos(Y);
%  contour(X, Y, Z);
%  xlabel('x');
%  ylabel('y');
%  title('Plot Kontur Permukaan z=sin(x)*cos(y)');

%  data = randn(100, 1); 
%  hist(data);
%  xlabel('Nilai');
%  ylabel('Frekuensi');
%  title('Histogram Data');

%PLOT 3D

%  [X, Y] = meshgrid(-5:0.2:5, -5:0.2:5);
%  Z = sin(X).*cos(Y); 
%  surf(X, Y, Z);
%  shading interp;
%  xlabel('X-axis');
%  ylabel('Y-axis');
%  zlabel('Z-axis');
%  title('Surface Plot: sin(X)*cos(Y)');
%  view(30, 45);

%   t = 0:pi/500:pi;
%   xt1 = sin(t).*cos(5*t);
%   yt1 = sin(t).*sin(5*t);
%   zt1 = cos(t);
%   xt2 = sin(t).*sin(7*t);
%   yt2 = sin(t).*cos(7*t);
%   zt2 = cos(t);
%   plot3(xt1,yt1,zt1,xt2,yt2,zt2)

%   x = -10:0.5:10;
%   y = -10:0.1:10;
%   [X,Y] = meshgrid(x,y);
%   Z = (4/5)*(X.^7-19*X.^5+8*X)+(4/5)*(Y.^7-19*Y.^5+8*Y);
%   surfc(X,Y,Z);
%   xlabel('x');
%   ylabel('y');
%   zlabel('f(x,y)');
