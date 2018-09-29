# NTC ASSIGNMENT 1

### Contributors:

Palak Singhal	16CO129 <br/>
Govind Jeevan	16CO221

### Problem Statement: Write a MATLAB code to demonstrate Fermat’s Little theorem a^(p−1) ≡ 1(modp) with the proper procedure.

#### Solution approach:

The conclusion can also be written rem(a^(p-1), p) = 1, meaning the remainder on dividing a^(p-1) by p is 1, or a^(p-1)≡1 mod p. <br/> 
Hence we can find a^(p-1) and calculate it's remainder with respect to p and verify if the remainder is 1 . This theorem holds true for all integers where a is not divisible by p.<br/>
This tool can also be used for primality test to verify if a number is prime or not where a user eneters a number p and we calculate a^(p-1) and find the remainder with respect to p where a is not divisible by p and check if the remainder is 1. If the remainder is 1 then the number can be both composite or prime , however if the number is prime then fermat's theorem always holds true.If given number is composite (or non-prime), then it may return true or false, but the probability of producing incorrect result for composite is low and can be reduced by doing more iterations.


##### Problems with the approach:

If a and p are reasonably large numbers, how can we calculate the remainder on dividing a by p? <br/>
If say p = 1000000, then even with a = 2 it is completely infeasible to work out an and then get the remainder from that, because 2^1000000 has about 300000 digits.<br/>
MATLAB fails at much larger numbers, for example it correctly says that rem(7^2,10) = 9 but it claims that rem(7^20,10) = 0 which is obviously false.<br/>

#### How we plan to overcome the problem:
The power function in matlab however comes to the rescue and solves the problem of calculating large powers. <br/>
The power function is as follows :
function x=pow(a,n,m)
    b=a;
    x = 1;
    while n>O
        d = rem(n,2);
        if d==1
            x = rem(x*b,m);
        end
        b = rem(b * b,m);
        n = (n-d)/2;
    end
