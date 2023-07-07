clc;
clear;
h = 0.05;
a = 2;
b = 3;
N = (b - a) / h;
w = zeros(1, N);
t = zeros(1, N);
t(1) = a;
w(1) = 1; % Initial value of y

for i = 2:N
    w(i) = w(i-1) + h * (1 + (t(i-1) - w(i-1))^2);
    t(i) = a + i * h;
end

plot([a, t], [1, w], 'b-')
xlabel('t')
ylabel('y(t)')
title("Solution of y' = 1 + (t - y)^2, y(2) = 1")
