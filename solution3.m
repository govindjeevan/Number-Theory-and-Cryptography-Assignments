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

prompt = 'Enter the lower range of prime numbers ';
l = input(prompt)

prompt = 'Enter the upper range of prime numbers ';
h= input(prompt)


prompt = 'Enter the value of a for fermat theorem ';
a= input(prompt)

% all the numbers between l and h are searched for and applied fermat's theorem on to find pseudoprimes
primesFermat=[];
primeNumbers = [];
for N = l:h;

% remainder is found by calculating a^(N-1) mod N
remainder = pow(a,N-1,N);

% pseudoprimes are calculated using fermat theorem and if the remainder is 1 it is stored in an array
if remainder == 1
    primesFermat= [primesFermat, N];
end

% real prime numbers between l and h are caluclated using inbuilt isprime function present in matlab
if isprime(N)
    primeNumbers = [primeNumbers, N];

end
end
% the difference between actual and pseudoprimes is calculated
primesFermat
primeNumbers
pseudoprimes=setdiff(primesFermat,primeNumbers)

% implementation of powermod function using modular exponentation
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

function C = my_setdiff(A,B)
% MYSETDIFF Set difference of two sets of positive integers (much faster than built-in setdiff)
% C = my_setdiff(A,B)
% C = A \ B = { things in A that are not in B }
% 
if isempty(A)
    C = [];
    return;
elseif isempty(B)
    C = A;
    return; 
else % both non-empty
    bits = zeros(1, max(max(A), max(B)));
    bits(A) = 1;
    bits(B) = 0;
    C = A(logical(bits(A)));
end
end
