clear all % clear Matlab work space
close all % closes all figures
%% Some matrix operations
a=[2,8,1,5];
b=7:10;
ab=a-b;
c=a'
d=[8;0;4;5];
%% Refresher on loops and if 
for i=1:length(b)
    if a(i)==b(i)
        disp('matched')
    end
end
%% Plot a sine signal
t=0:0.1:10 % forming a time access from 0 to 10 with 0.1 time steps
x=sin(t);
x(0) %Uncomment this line and execute it. Why does it cause an error?
plot(t,x)

%% creat a matrix 
gh=[0 exp(pi); tan(pi/5) exp(2*pi)/4];
gh2=gh.*gh

v=[1; 0];
vv=gh*v

ghv=[gh v];
size (ghv)


%%
clear all % clear everything again
load ecgsig.mat %one of Matlab's builtin signals
whos %it shows you the current content of the Matlab workspace
%%
plot(ecgsig(110:500))
ecgseg=ecgsig(110:500); %(
avgecg=mean(ecgseg); % average of the selected segment
hold on
plot (avgecg*ones(length(ecgseg)),'r') %plot the mean as line across the signal

ecgreverse=ecgseg(end:-1:1); % reverse the segment
ecgstiched=[ecgseg; ecgreverse]; %concatenate two signals 
figure
plot(ecgstiched) %plot the concatenated signal
%% define an anonymous function
f=@(t) exp(-0.5*t).*cos(2*pi*t); %pay attention to .* it does element by element multiplication
tt=0:.01:10;
figure (20)
plot(tt,f(tt))
%%
hold on
%plot another signal using the function fastdampedCos defined below
plot(tt,fastdampedCos(tt),'r')


function out=fastdampedCos(t)
out=exp(-2*t).*cos(2*pi*t);
end

 

