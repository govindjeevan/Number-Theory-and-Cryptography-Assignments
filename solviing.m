syms x;
syms y;
syms pr;
syms exp;
exp=67*x+4;
a=3*y+3;
p=3;

mod(exp,p-1)
gcd(a,p)
if gcd(a,p)==1
    original=expand(a^exp)
    reduced=expand(a^(mod(exp,p-1)))
end

mod(subs(reduced,{x,y},{2,1}),p)
mod(subs(original,{x,y},{2,1}),p)