f1 = 50;
f2 = 55;
Fs = 150;
% ��� ������� ���������� aliasing
N = 50;
dt = 1 / Fs;
n = [0:1:N-1];
t = dt*n;
x = cos(2*pi*f1*t) + cos(2*pi*f2*t);
X =  fft(x);
stem(n, abs(X));
hold on;

N = 75;
% �������� � ��������� ����� ��� sinc
dt = 1 / Fs;
n = [0:1:N-1];
t = dt*n;
x = cos(2*pi*f1*t) + cos(2*pi*f2*t);
X =  fft(x);
stem(n, abs(X));