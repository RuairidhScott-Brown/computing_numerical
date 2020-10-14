clc;
clear all;
close all;
num=input('Enter first range:');
num1=input('Enter second range:');
for i=num:num1
temp=i;
reverse=0;
   while temp > 0
     t = mod(temp,10);
     reverse = 10*reverse+t
     temp = (temp-t)/10;
   end
 if i==reverse
    fprintf('Number is palindrome. %d\n',reverse);
 end
end