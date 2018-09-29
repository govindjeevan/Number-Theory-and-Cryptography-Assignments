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

for p=2:10
flag=0;
for x=2:p
    x
    if mod(x,p)~=0
    lhs=x^(p-1)
    remainder=mod(lhs,p)
     if(remainder~=1)
        flag=1
        fprintf('\n%d is not prime\n\n', p)
        break
     end
    else
        fprintf('%d is not coprime to prime: %d\n', x, p)
    end
end 
if flag==0 
 fprintf('\n\%d is prime\n\n', p)
end
end
