clc % clear the screen before printing
clear all % clear all variables in memory
p=5;
x=2;
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


prompt = 'What is the original value? ';
inp_string = input(prompt, 's');
if isempty(strfind(inp_string, '-'))
  idx= strfind(inp_string, '+')
  sign = '+'
else
  idx= strfind(inp_string, '-')
  sign = '-'
end

astr= extractAfter( inp_string, 1, idx-2)
bstr= extractAfter(inp_string, idx+1, length(inp_string)-idx)

a=str2num(astr)
b=str2num(bstr)


primes=[];
for n=1:10
  if sign =='-'
    number = a*n -b;
  else
    number = a*n +b;
  end
  
  if number<0
    continue;
  end
  
  p=number
  
  flag=1;
  for a=1:p
    if gcd(p,a)~=1
        continue;
    end
    lhs=pow(a,p-1,p)
    if lhs ~= 1
        flag=0;
    end
  end
  
  if flag==1
    primes=[primes,p];
  end
end

primes

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

