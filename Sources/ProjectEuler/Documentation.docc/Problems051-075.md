# Problems 51 - 75

Problem descriptions of problems 51 to 75

## Problem 51

Prime digit replacements

By replacing the 1st digit of the 2-digit number *3, it turns out that six of the nine possible values: 13, 23, 43, 53, 73, and 83, are all prime.

By replacing the 3rd and 4th digits of 56**3 with the same digit, this 5-digit number is the first example having seven primes among the ten generated numbers, yielding the family: 56003, 56113, 56333, 56443, 56663, 56773, and 56993. Consequently 56003, being the first member of this family, is the smallest prime with this property.

Find the smallest prime which, by replacing part of the number (not necessarily adjacent digits) with the same digit, is part of an eight prime value family.

## Problem 52

Permuted multiples

It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.

Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.

## Problem 53

Combinatoric selections

There are exactly ten ways of selecting three from five, 12345:

    123, 124, 125, 134, 135, 145, 234, 235, 245, and 345

In combinatorics, we use the notation, $$\displaystyle \binom 5 3 = 10$$.

In general, $$\displaystyle \binom n r = \dfrac{n!}{r!(n-r)!}$$, where $$r \le n$$, $$n! = n \times (n-1) \times ... \times 3 \times 2 \times 1$$, and $$0! = 1$$

It is not until $$n = 23$$, that a value exceeds one-million: $$\displaystyle \binom {23} {10} = 1144066$$.

How many, not necessarily distinct, values of $$\displaystyle \binom n r$$ for $$1 \le n \le 100$$, are greater than one-million?

##  Problem 67

Maximum path sum II

By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

       3
      7 4
     2 4 6
    8 5 9 3
    
That is, 3 + 7 + 4 + 9 = 23.

Find the maximum total from top to bottom in `triangle.txt`, a 15K text file containing a triangle with one-hundred rows.

> Note: This is a much more difficult version of Problem 18. It is not possible to try every route to solve this problem, as there are 299 altogether! If you could check one trillion (1012) routes every second it would take over twenty billion years to check them all. There is an efficient algorithm to solve it. ;o)

## Problem 69

Totient maximum

Euler's Totient function, $$\phi(n)$$ [sometimes called the phi function], is used to determine the number of numbers less than n which are relatively prime to n. For example, as 1, 2, 4, 5, 7, and 8, are all less than nine and relatively prime to nine, $$\phi(9)=6$$.

|  n | Relatively Prime | φ(n) | n/φ(n)    |
|----|------------------|------|-----------|
|  2 | 1                |   1  | 2         |
|  3 | 1,2              |   2  | 1.5       |
|  4 | 1,3              |   2  | 2         |
|  5 | 1,2,3,4          |   4  | 1.25      |
|  6 | 1,5              |   2  | 3         |
|  7 | 1,2,3,4,5,6      |   6  | 1.1666... |
|  8 | 1,3,5,7          |   4  | 2         |
|  9 | 1,2,4,5,7,8      |   6  | 1.5       |
| 10 | 1,3,7,9          |   4  | 2.5       |

It can be seen that $$n=6$$ produces a maximum $$n/\phi(n)$$ for $$n \le 10$$.

Find the value of $$n \le 1,000,000$$ for which $$n/\phi(n)$$ is a maximum.
