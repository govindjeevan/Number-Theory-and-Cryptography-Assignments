%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        CO313-NTC ASSIGNMENT

%Write a MATLAB code to demonstrate Fermat’s Little theorem a^(p−1) ≡ 1(modp) with the proper procedure.

%MEMBERS:
%1. PALAK SINGHAL  16CO129
%2. GOVIND JEEVAN  16CO221

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% cretaing symbolic variables to hold expression instead of just numbers
%creating symbolic variable x, y, pr, exp

syms x;
syms y;
symps pr;
syms exp;

exp=67*x+4;

a=3*y+2;
p=17;

mod(exp,p-1)

% Fermat's theroem is only applicable when a and p are co prime to each other , hence we check if gcd of a and p is 1 

if gcd(a,p)==1

% expand function is used to expand a number raised to an expression 

% original expression after expanding a raised to the power of a expression
    original=expand(a^exp)

% reduced expression after expanding a raised to the power of a mod (p-1)
    reduced=expand(a^(mod(exp,p-1)))
end

% by fermat's theorem when we substittute the value of x and y in the expression and find mod with p . For both the original and reduced expression we get the same value. This can be checked with 
% different values of x and y and verfied.
 
mod(subs(reduced,{x,y},{2,1}),p)
mod(subs(original,{x,y},{2,1}),p)

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
