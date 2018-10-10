
# NTC ASSIGNMENT 1

## Contributors:

Govind Jeevan	16CO221
Palak Singhal	16CO129 <br/>


### Problem Statement:
### Write a MATLAB code to demonstrate Fermat’s Little theorem a^(p−1) ≡ 1(modp) with the proper procedure.

Fermat's Little Theorem:

     a^(p-1) ≡ 1 mod p
     
where a is not divisible by p and p is a prime.<br/>
 We came up with four approaches to demonstrate Fermat's Little Theorem

## Demonstration I:

The conclusion can also be written 

    remainder(a^(p-1), p) = 1, 

meaning the remainder on dividing 
**a^(p-1)^  by p is 1,  
or
 a^(p-1)^ ≡ 1 mod p.** 
 where a is not divisible by p.<br/>
#### Input: 
 - A format for prime number. ( eg. 4x+3 ) 
 - Upper and lower limit for range of x to be tested

#### Algorithm:
    1. p = 4x+1
    2. a^(p-1) is calculated
    3. Remainder on division by p.
    4. Verify if the remainder is 1 .
    5. If remainder != 1, it is not a prime
    6. If remainder ==1, it is a prime or a pseudoprime. 

> An outer loop varies x within the range given, and an inner loop
> varies a.

If the number (p = 4x+1) is composite (or non-prime), then it may return true or false, but the can be reduced by doing more iterations varying a.

***Application:***
Input: **4n+1**. It's not necessary for all 4n+1 numbers to be prime . 
We try to find out the numbers which are prime and of the format 4n+1 by applying Feramt's theorem.


#### Issue Encountered:

If a and p are reasonably large numbers, how can we calculate the remainder on dividing a by p? <br/>
If say p = 1000000, then even with a = 2 it is completely infeasible to work out an and then get the remainder from that, because 2^1000000 has about 300000 digits.<br/>
MATLAB fails at much larger numbers, for example it correctly says that rem(7^2 ,10) = 9 but it claims that rem(7^20 ,10) = 0 which is obviously false.<br/>

#### Implemented Solution for Issue:

Implemented an optimized power function that does not calculate the huge powers but manages to find the remainder in breaking down the number.<br/>
**The power function is as follows :** <br/>

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

## Demonstration II:

An expression of the form a^exp ≡ 1(modp) if gcd(a,p) = 1 when continuously taken mod with p-1 should still remain congruent to 1(modp) . Hence mod(exp,p-1) when raised as power of a should give the same remainder as exp raised to the power of a by fermat's theorem. <br/> 
Showing this equality would demonstrate Fermat's theorem. <br/>
We tried the find the value of the original and reduced expression by substituting for variables x and y with some arbitary values and verified the result. <br/>


## Demonstration III:

In this approach we found out prime numbers by taking a fixed value of a instead of trying for many values of a and found out numbers which are prime by applying Feramt's theorem . However if by applying Feramt's theorem if some number p defies it , that tells us that the number is composite however if it gives the reminder 1 we cannot be sure that the number is prime . Hence these numbers which give 1 but still are not prime are called pseudoprimes. We find the set difference between set of numbers obtained by fermat's theorem and actual prime numbers .

### FILE FORMAT:

1. solution1.m<br/>
-> Used for the 1st solution approach<br/>

2. solution2.m<br/>
-> Used for the 2nd solution approach.<br/>

3. solution3.m<br/>
-> Used for the third solution approach.<br/>

4. solution4.m<br/>
-> Used for the 4th solution approach.<br/>





