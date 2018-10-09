%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        CO313-NTC ASSIGNMENT

%Write a MATLAB code to demonstrate Fermat’s Little theorem a^(p−1) ≡ 1(modp) with the proper procedure.

%MEMBERS:
%1. PALAK SINGHAL  16CO129
%2. GOVIND JEEVAN  16CO221

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc % clear the screen before printing
clear all % clear all variables in memory
fprintf('\n\n\n\t\t\t\t\t\t\tF E R M A T'' S   L I T T L E   T H E O R E M \n')
fprintf('\t\t\t--------------------------------------------------------------------\n')
fprintf('\t\t\tFermat Little Theorem: (x^p-1)= 1 mod p') 
fprintf('\t\t\tFor every prime number such that (x,p)=1 it can be expressed in the form given above')
fprintf('\t\t\t--------------------------------------------------------------------\n')

fprintf('--------------------------------\n\n')
tbc=datestr(now);
fprintf('\nTime before computation:\t')
fprintf(tbc)
fprintf('\n\n')

% taking input of the input format of prime numbers
prompt = 'What is the original value? ';
inp_string = input(prompt, 's');

%taking the lower range of prime numbers
prompt = 'Enter the lower range of prime numbers ';
l = input(prompt)

%taking the upper range of prime numbers
prompt = 'Enter the upper range of prime numbers ';
h= input(prompt)

% finding the sign from the input format whether + or -
if isempty(strfind(inp_string, '-'))
  idx= strfind(inp_string, '+')
  sign = '+'
else
  idx= strfind(inp_string, '-')
  sign = '-'
end

% finding the value of a and b when an input string of the format ax+b is entered
astr= substr( inp_string, 1, idx-2)
bstr= substr(inp_string, idx+1, length(inp_string)-idx)

% converting a and b to respective numbers from string format
a=str2num(astr)
b=str2num(bstr)

%empty array for prime numbers
primes=[];

% calculate prime numbers of the form given in input between the given range
for n=l:h
  if sign =='-'
    number = a*n -b;
  else
    number = a*n +b;
  end

%only positive numbers are calculated  
  if number<0
    continue;
  end
  
  p=number
  
%all values of a from 2 till the prime number are used to calculate the prime numbers 
  flag=1;
  for a=2:p
% fermat's theorem is used to calculate the primes, for that a and p should be co prime , hence gcd should not be 1
    if gcdcalc(p,a)~=1
        continue;
    end

% powermod is applied here to calculate a^(p-1) mod p using modular exponentation function
    lhs=pow(a,p-1,p)
% if remainder calculated is not 1 which is the basic condition for fermat's theorem for a number to be prime , hence taht number won't be included in prime
    if lhs ~= 1
        flag=0;
    end
  end
  
% if the above condition is not satisfied that means the number is prime and are stored in an array of primes
  if flag==1
    primes=[primes,p];
  end
end

% the final array of prime numbers is  printed
primes

%powermod is calculated here using modular exponentation
function x=pow(a,n,m)
b=a;
x = 1;
while n>0
d = rem(n,2);
if d==1
x = rem(x*b,m);
end
b = rem(b * b,m);
n = (n-d)/2;
end
end

%gcd is calculated here using extended euclidean algorithm
function b= gcdcalc(a,b) 
a = abs(a);
b = abs(b); 

r = a - b*floor(a/b); 

while r ~= 0
    a = b;
    b = r;
    r = a - b*floor(a/b);
end 
end

