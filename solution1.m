primes=[];
for p=1:1000
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
