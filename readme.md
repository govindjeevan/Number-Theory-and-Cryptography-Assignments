# NTC ASSIGNMENT 1

### Contributors:

Palak Singhal	16CO129 <br/>
Govind Jeevan	16CO221

### Problem Statement: Write a MATLAB code to demonstrate Fermat’s Little theorem a^(p−1) ≡ 1(modp) with the proper procedure.

### We came up with four approaches to demonstrate Fermat's Little Theorem

#### 1. Solution approach:

The conclusion can also be written rem(a^(p-1), p) = 1, meaning the remainder on dividing a^(p-1) by p is 1, or a^(p-1)≡1 mod p. <br/> 
Hence we can find a^(p-1) and calculate it's remainder with respect to p and verify if the remainder is 1 . This theorem holds true for all integers where a is not divisible by p.<br/>
This tool can also be used for primality test to verify if a number is prime or not where a user eneters a number p and we calculate a^(p-1) and find the remainder with respect to p where a is not divisible by p and check if the remainder is 1. If the remainder is 1 then the number can be both composite or prime , however if the number is prime then fermat's theorem always holds true.If given number is composite (or non-prime), then it may return true or false, but the probability of producing incorrect result for composite is low and can be reduced by doing more iterations.


#### Problems with the approach:

If a and p are reasonably large numbers, how can we calculate the remainder on dividing a by p? <br/>
If say p = 1000000, then even with a = 2 it is completely infeasible to work out an and then get the remainder from that, because 2^1000000 has about 300000 digits.<br/>
MATLAB fails at much larger numbers, for example it correctly says that rem(7^2 ,10) = 9 but it claims that rem(7^20 ,10) = 0 which is obviously false.<br/>

#### How we overcame the problem:
The power function in matlab however comes to the rescue and solves the problem of calculating large powers. <br/>
We plan to implement the power function on our own and check the results: <br/>
The power function is as follows : <br/>
function x=pow(a,n,m) <br/>
    b=a; <br/>
    x = 1; <br/>
    while n>O <br/>
        d = rem(n,2); <br/>
        if d==1 <br/>
            x = rem(x*b,m); <br/>
        end <br/>
        b = rem(b * b,m);<br/>
        n = (n-d)/2; <br/>
    end

#### 2. Solution approach:

An expression of the form a^exp ≡ 1(modp) if gcd(a,p) = 1 when continuously taken mod with p-1 should still remain congruent to 1(modp) . Hence mod(exp,p-1) when raised as power of a should give the same remainder as exp raised to the power of a by fermat's theorem. <br/> 
Showing this equality would demonstrate Fermat's theorem. <br/>
We tried the find the value of the original and reduced expression by substituting for variables x and y with some arbitary values and verified the result. <br/>

#### 3. Solution approach:

Input for prime number is taken in a format say 4n+1. Since it's not necessary for all 4n+1 numbers to be prime . We try to find out the numbers which are prime and of the format 4n+1 by applying Feramt's theorem. Hereafter we follow the same approach as we followed in approach 1 by substituting different values for n.

#### 4. Solution approach:

In this approach we found out prime numbers by taking a fixed value of a instead of trying for many values of a and found out numbers which are prime by applying Feramt's theorem . However if by applying Feramt's theorem if some number p defies it , that tells us that the number is composite however if it gives the reminder 1 we cannot be sure that the number is prime . Hence these numbers which give 1 but still are not prime are called pseudoprimes. We find the set difference between set of numbers obtained by fermat's theorem and actual prime numbers .
