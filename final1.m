syms x;
syms y;
syms pr;
syms exp;

prompt = 'What is the original value? ';
inp_string = input(prompt, 's');
if isempty(strfind(inp_string, '-'))
  idx= strfind(inp_string, '+')
  sign = '+'
else
  idx= strfind(inp_string, '-')
  sign = '-'
end

astr= extractBetween( inp_string, 1, idx-2)
bstr= extractBetween(inp_string, idx+1, length(inp_string)-idx)

i=str2num(astr)
j=str2num(bstr)

exp=i*x+j;
a=3*y+2;
p=17;

mod(exp,p-1)
if gcd(a,p)==1
    original=expand(a^exp)
    reduced=expand(a^(mod(exp,p-1)))
end

mod(subs(reduced,{x,y},{2,1}),p)
mod(subs(original,{x,y;}, 2,1}),p)