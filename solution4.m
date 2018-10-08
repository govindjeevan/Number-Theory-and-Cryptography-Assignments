N = 1:11400;
remainder = pow(4,N-1,N);
primesFermat = N(remainder == 1)

primeNumbers = N(isprime(N));
setdiff(primesFermat,primeNumbers)


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
