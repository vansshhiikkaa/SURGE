  clc; % stock price
clear;
Mc=2^4; %monte carlo samples
T = 1;
N = 2^6;
dt = T/N;
SW=0;
Sx = zeros(1,N+1);
X = zeros(1,N);
X(1)=1;
mu = 1;
sigma = 0.1;
for k = 1:Mc
for n = 1:N
    %dW = sqrt(dt)*randn;
    %X(n+1) = X(n) + dt*f(t(n),X(n)) + sigma(t(n),X(n))*sqrt(dt)*randn;
    X(n+1) = X(n) + mu*X(n)*dt + sigma*sqrt(dt)*randn;
    Sx(n) = Sx(n) + X(n);
    
end
%SW = SW + X(N);

t=[0:dt:T];

hold on
plot(t,X);

%plot(t,X);
%S = Sw/Mc;

end

%plot(t,S,LineWidth=4,Color='r');
S = Sx /Mc;
plot(t,S,LineWidth=4);
hold off



