%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        CO313-NTC ASSIGNMENT

%Write a MATLAB code to demonstrate Fermat’s Little theorem a^(p−1) ≡ 1(modp) with the proper procedure.

%MEMBERS:
%1. PALAK SINGHAL  16CO129
%2. GOVIND JEEVAN  16CO221

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
% cretaing symbolic variables to hold expression instead of just numbers
%creating symbolic variable x, y, pr, exp

%taking the inputs for exponent, prime number p and a
prompt = 'Enter the value a for input exponent of the form ax+b ';
a1= input(prompt)
prompt = 'Enter the value b for input exponent of the form ax+b ';
b1= input(prompt)

prompt = 'Enter the value m for a of the form mx+n ';
a2= input(prompt)
prompt = 'Enter the value n for a of the form mx+n ';
b2= input(prompt)

prompt = 'Enter the value of prime number p ';
p= input(prompt)

syms x;
syms y;
symps pr;
syms exp;

exp=a1*x+b1;

a=a2*y+b2;
%p=17;

modcalc(exp,p-1)

% Fermat's theroem is only applicable when a and p are co prime to each other , hence we check if gcd of a and p is 1 

if gcdcalc(a,p)==1

% expand function is used to expand a number raised to an expression 

% original expression after expanding a raised to the power of a expression
    original=expand(a^exp)

% reduced expression after expanding a raised to the power of a mod (p-1)
    reduced=expand(a^(modcalc(exp,p-1)))
end

% by fermat's theorem when we substittute the value of x and y in the expression and find mod with p . For both the original and reduced expression we get the same value. This can be checked with 
% different values of x and y and verfied.
 
mod(subs(reduced,{x,y},{2,1}),p)
mod(subs(original,{x,y},{2,1}),p)

%calculation of mod function
function x=modcalc(a,b)
x= a- b*floor(a/b);
end
%extended euclidean algorithm is used to calculate the gcd
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
