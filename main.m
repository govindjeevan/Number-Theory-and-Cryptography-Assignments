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
%for n=2:5% Defining the power "n" here 
% FermatWaitbar=waitbar(maxout,'Generating Fermat Numbers, Please wait...')


for x=2:5
    x
    if mod(x,p)~=0
    lhs=x^(p-1)
    rhs=lhs-1
    remainder=mod(rhs,p)
    else
     fprintf('The number x is not co prime with the prime number p')
    end
end % for x

