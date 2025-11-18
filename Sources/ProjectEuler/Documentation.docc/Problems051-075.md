# Problems 51 - 75

Problem descriptions of problems 51 to 75

## Problem 51

### Prime digit replacements

By replacing the 1st digit of the 2-digit number *3, it turns out that six of the nine possible values: 13, 23, 43, 53, 73, and 83, are all prime.

By replacing the 3rd and 4th digits of 56**3 with the same digit, this 5-digit number is the first example having seven primes among the ten generated numbers, yielding the family: 56003, 56113, 56333, 56443, 56663, 56773, and 56993. Consequently 56003, being the first member of this family, is the smallest prime with this property.

Find the smallest prime which, by replacing part of the number (not necessarily adjacent digits) with the same digit, is part of an eight prime value family.

## Problem 52

### Permuted multiples

It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.

Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.

## Problem 53

### Combinatoric selections

There are exactly ten ways of selecting three from five, $12345$:

$$123, 124, 125, 134, 135, 145, 234, 235, 245, and 345$$

In combinatorics, we use the notation, $\displaystyle \binom 5 3 = 10$.

In general, $\displaystyle \binom n r = \dfrac{n!}{r!(n-r)!}$, where $r \le n$, $n! = n \times (n-1) \times ... \times 3 \times 2 \times 1$, and $0! = 1$

It is not until $n = 23$, that a value exceeds one-million: $\displaystyle \binom {23} {10} = 1144066$.

How many, not necessarily distinct, values of $\displaystyle \binom n r$ for $1 \le n \le 100$, are greater than one-million?

## Problem 54

### Poker hands

In the card game poker, a hand consists of five cards and are ranked, from lowest to highest, in the following way:

- **High Card:** Highest value card.
- **One Pair:** Two cards of the same value.
- **Two Pairs:** Two different pairs.
- **Three of a Kind:** Three cards of the same value.
- **Straight:** All cards are consecutive values.
- **Flush:** All cards of the same suit.
- **Full House:** Three of a kind and a pair.
- **Four of a Kind:** Four cards of the same value.
- **Straight Flush:** All cards are consecutive values of same suit.
- **Royal Flush:** Ten, Jack, Queen, King, Ace, in same suit.

The cards are valued in the order:  
2, 3, 4, 5, 6, 7, 8, 9, 10, Jack, Queen, King, Ace.

If two players have the same ranked hands then the rank made up of the highest value wins; for example, a pair of eights beats a pair of fives (see example 1 below). But if two ranks tie, for example, both players have a pair of queens, then highest cards in each hand are compared (see example 4 below); if the highest cards tie then the next highest cards are compared, and so on.

Consider the following five hands dealt to two players:

| Hand | Player 1                                            | Player 2                                             | Winner |
|------|-----------------------------------------------------|------------------------------------------------------|--------|
|   1  |**5H 5C 6S 7S KD** (Pair of Fives)                   |**2C 3S 8S 8D TD** (Pair of Eights)                   |Player 2|
|   2  |**5D 8C 9S JS AC** (Highest card Ace)                |**2C 5C 7D 8S QH** (Highest card Queen)               |Player 1|
|   3  |**2D 9C AS AH AC** (Three Aces                       |**3D 6D 7D TD QD** (Flush with Diamonds)              |Player 2|
|   3  |**4D 6S 9H QH QC** (Pair of Queens highest card Nine)|**3D 6D 7H QD QS** (Pair of Queens highest card Seven)|Player 1|
|   5  |**2H 2D 4C 4D 4S** (Full House with Three Fours)     |**3C 3D 3S 9S 9D** (Full House with Three Threes)     |Player 1|

The file, `poker.txt`, contains one-thousand random hands dealt to two players. Each line of the file contains ten cards (separated by a single space): the first five are Player 1's cards and the last five are Player 2's cards. You can assume that all hands are valid (no invalid characters or repeated cards), each player's hand is in no specific order, and in each hand there is a clear winner.

How many hands does Player 1 win?

## Problem 55

### Lychrel numbers

If we take 47, reverse and add, 47 + 74 = 121, which is palindromic.

Not all numbers produce palindromes so quickly. For example,

$$
349 +  943 = 1292\\
1292 + 2921 = 4213\\
4213 + 3124 = 7337
$$

That is, 349 took three iterations to arrive at a palindrome.

Although no one has proved it yet, it is thought that some numbers, like 196, never produce a palindrome. A number that never forms a palindrome through the reverse and add process is called a Lychrel number. Due to the theoretical nature of these numbers, and for the purpose of this problem, we shall assume that a number is Lychrel until proven otherwise. In addition you are given that for every number below ten-thousand, it will either (i) become a palindrome in less than fifty iterations, or, (ii) no one, with all the computing power that exists, has managed so far to map it to a palindrome. In fact, 10677 is the first number to be shown to require over fifty iterations before producing a palindrome: 4668731596684224866951378664 (53 iterations, 28-digits).

Surprisingly, there are palindromic numbers that are themselves Lychrel numbers; the first example is 4994.

How many Lychrel numbers are there below ten-thousand?

> Note: Wording was modified slightly on 24 April 2007 to emphasise the theoretical nature of Lychrel numbers.

## Problem 56 

### Powerful digit sum

A googol ($10^{100}$) is a massive number: one followed by one-hundred zeros; $100^{100}$ is almost unimaginably large: one followed by two-hundred zeros. Despite their size, the sum of the digits in each number is only 1.

Considering natural numbers of the form, $a^b$, where $a, b < 100$, what is the maximum digital sum?

## Problem 57

### Square root convergents

It is possible to show that the square root of two can be expressed as an infinite continued fraction.

$$\sqrt 2 =1+ \frac 1 {2+ \frac 1 {2 +\frac 1 {2+ \dots}}}$$

By expanding this for the first four iterations, we get:

$$1 + \frac 1 2 = \frac  32 = 1.5$$

$$1 + \frac 1 {2 + \frac 1 2} = \frac 7 5 = 1.4$$

$$1 + \frac 1 {2 + \frac 1 {2+\frac 1 2}} = \frac {17}{12} = 1.41666 \dots$$

$$1 + \frac 1 {2 + \frac 1 {2+\frac 1 {2+\frac 1 2}}} = \frac {41}{29} = 1.41379 \dots$$

The next three expansions are $\frac {99}{70}$, $\frac {239}{169}$ and $\frac {577}{408}$, but the eighth expansion, $\frac {1393}{985}$ is the first example where the number of digits in the numerator exceeds the number of digits in the denominator.

In the first one-thousand expansions, how many fractions contain a numerator with more digits than the denominator?

## Problem 58

### Spiral Primes

Starting with 1 and spiralling anticlockwise in the following way, a square spiral with side length 7 is formed.

$$
\color{red}{37}\ 36\ 35\ 34\ 33\ 32\ \color{red}{31}\\
38\ \color{red}{17}\ 16\ 15\ 14\ \color{red}{13}\ 30\\
39\ 18\ \ \ \color{red}{5}\ \ \ 4\ \ \ \color{red}{3}\ 12\ 29\\
40\ 19\ \ \ 6\ \ \ 1\ \ \ 2\ 11\ 28\\
41\ 20\ \ \ \color{red}{7}\ \ \ 8\ \ \ 9\ 10\ 27\\
42\ 21\ 22\ 23\ 24\ 25\ 26\\
\color{red}{43}\ 44\ 45\ 46\ 47\ 48\ 49
$$

It is interesting to note that the odd squares lie along the bottom right diagonal, but what is more interesting is that 8 out of the 13 numbers lying along both diagonals are prime; that is, a ratio of 8/13 ≈ 62%.

If one complete new layer is wrapped around the spiral above, a square spiral with side length 9 will be formed. If this process is continued, what is the side length of the square spiral for which the ratio of primes along both diagonals first falls below 10%?

## Problem 59

### XOR decryption

Each character on a computer is assigned a unique code and the preferred standard is ASCII (American Standard Code for Information Interchange). For example, uppercase A = 65, asterisk (*) = 42, and lowercase k = 107.

A modern encryption method is to take a text file, convert the bytes to ASCII, then XOR each byte with a given value, taken from a secret key. The advantage with the XOR function is that using the same encryption key on the cipher text, restores the plain text; for example, 65 XOR 42 = 107, then 107 XOR 42 = 65.

For unbreakable encryption, the key is the same length as the plain text message, and the key is made up of random bytes. The user would keep the encrypted message and the encryption key in different locations, and without both "halves", it is impossible to decrypt the message.

Unfortunately, this method is impractical for most users, so the modified method is to use a password as a key. If the password is shorter than the message, which is likely, the key is repeated cyclically throughout the message. The balance for this method is using a sufficiently long password key for security, but short enough to be memorable.

Your task has been made easy, as the encryption key consists of three lower case characters. Using `cipher.txt`, a file containing the encrypted ASCII codes, and the knowledge that the plain text must contain common English words, decrypt the message and find the sum of the ASCII values in the original text.

## Problem 60

### Prime pair sets

The primes 3, 7, 109, and 673, are quite remarkable. By taking any two primes and concatenating them in any order the result will always be prime. For example, taking 7 and 109, both 7109 and 1097 are prime. The sum of these four primes, 792, represents the lowest sum for a set of four primes with this property.

Find the lowest sum for a set of five primes for which any two primes concatenate to produce another prime.

## Problem 61

### Cyclical figurate numbers

Triangle, square, pentagonal, hexagonal, heptagonal, and octagonal numbers are all figurate (polygonal) numbers and are generated by the following formulae:

| Series     | Equation              | First entries         |
| ---------- | --------------------- | --------------------- |
| Triangle   | $$P_{3,n}=n(n+1)/2$$  | 1, 3, 6, 10, 15, ...  |
| Square     | $$P_{4,n}=n^2$$       | 1, 4, 9, 16, 25, ...  |
| Pentagonal | $$P_{5,n}=n(3n−1)/2$$ | 1, 5, 12, 22, 35, ... |
| Hexagonal  | $$P_{6,n}=n(2n−1)$$   | 1, 6, 15, 28, 45, ... |
| Heptagonal | $$P_{7,n}=n(5n−3)/2$$ | 1, 7, 18, 34, 55, ... |
| Octagonal  | $$P_{8,n}=n(3n−2)$$   | 1, 8, 21, 40, 65, ... |

The ordered set of three 4-digit numbers: 8128, 2882, 8281, has three interesting properties.

1. The set is cyclic, in that the last two digits of each number is the first two digits of the next number (including the last number with the first).
2. Each polygonal type: triangle $(P_{3,127}=8128)$, square $(P_{4,91}=8281)$, and pentagonal $(P_{5,44}=2882)$, is represented by a different number in the set.
3. This is the only set of 4-digit numbers with this property.

Find the sum of the only ordered set of six cyclic 4-digit numbers for which each polygonal type: triangle, square, pentagonal, hexagonal, heptagonal, and octagonal, is represented by a different number in the set.

## Problem 62

### Cubic permutations

The cube, $41063625$ $(345^3)$, can be permuted to produce two other cubes: $56623104$ $(384^3)$ and $66430125$ $(405^3)$. In fact, $41063625$ is the smallest cube which has exactly three permutations of its digits which are also cube.

Find the smallest cube for which exactly five permutations of its digits are cube.

## Problem 63

### Powerful digit counts

The 5-digit number, $16807=7^5$, is also a fifth power. Similarly, the 9-digit number, $134217728=8^9$, is a ninth power.

How many n-digit positive integers exist which are also an $n^{th}$ power?

## Problem 64 

### Odd period square roots

All square roots are periodic when written as continued fractions and can be written in the form:

$$\displaystyle \quad \quad \sqrt{N}=a_0+\frac 1 {a_1+\frac 1 {a_2+ \frac 1 {a3+ \dots}}}$$

For example, let us consider $\sqrt{23}$:

$$\quad \quad \sqrt{23}=4+\sqrt{23}-4=4+\frac 1 {\frac 1 {\sqrt{23}-4}}=4+\frac 1  {1+\frac{\sqrt{23}-3}7}$$

If we continue we would get the following expansion:

$$\displaystyle \quad \quad \sqrt{23}=4+\frac 1 {1+\frac 1 {3+ \frac 1 {1+\frac 1 {8+ \dots}}}}$$

The process can be summarised as follows:

$$\quad \quad a_0=4, \frac 1 {\sqrt{23}-4}=\frac {\sqrt{23}+4} 7=1+\frac {\sqrt{23}-3} 7$$
$$\quad \quad a_1=1, \frac 7 {\sqrt{23}-3}=\frac {7(\sqrt{23}+3)} {14}=3+\frac {\sqrt{23}-3} 2$$
$$\quad \quad a_2=3, \frac 2 {\sqrt{23}-3}=\frac {2(\sqrt{23}+3)} {14}=1+\frac {\sqrt{23}-4} 7$$
$$\quad \quad a_3=1, \frac 7 {\sqrt{23}-4}=\frac {7(\sqrt{23}+4)} 7=8+\sqrt{23}-4$$
$$\quad \quad a_4=8, \frac 1 {\sqrt{23}-4}=\frac {\sqrt{23}+4} 7=1+\frac {\sqrt{23}-3} 7$$
$$\quad \quad a_5=1, \frac 7 {\sqrt{23}-3}=\frac {7 (\sqrt{23}+3)} {14}=3+\frac {\sqrt{23}-3} 2$$
$$\quad \quad a_6=3, \frac 2 {\sqrt{23}-3}=\frac {2(\sqrt{23}+3)} {14}=1+\frac {\sqrt{23}-4} 7$$
$$\quad \quad a_7=1, \frac 7 {\sqrt{23}-4}=\frac {7(\sqrt{23}+4)} {7}=8+\sqrt{23}-4$$
$$ $$

It can be seen that the sequence is repeating. For conciseness, we use the notation $$\sqrt{23}=[4;(1,3,1,8)]$$ to indicate that the block (1,3,1,8) repeats indefinitely.

The first ten continued fraction representations of (irrational) square roots are:

$\quad \quad \sqrt{2}=[1;(2)]$, period=1  
$\quad \quad \sqrt{3}=[1;(1,2)]$, period=2  
$\quad \quad \sqrt{5}=[2;(4)]$, period=1  
$\quad \quad \sqrt{6}=[2;(2,4)]$, period=2  
$\quad \quad \sqrt{7}=[2;(1,1,1,4)]$, period=4  
$\quad \quad \sqrt{8}=[2;(1,4)]$, period=2  
$\quad \quad \sqrt{10}=[3;(6)]$, period=1  
$\quad \quad \sqrt{11}=[3;(3,6)]$, period=2  
$\quad \quad \sqrt{12}=[3;(2,6)]$, period=2  
$\quad \quad \sqrt{13}=[3;(1,1,1,1,6)]$, period=5  

Exactly four continued fractions, for $N \le 13$ have an odd period.

How many continued fractions for $N \le 10\,000$ have an odd period?

## Problem 65

### Convergents of e

The square root of 2 can be written as an infinite continued fraction.

$$\sqrt{2} = 1 + \dfrac{1}{2 + \dfrac{1}{2 + \dfrac{1}{2 + \dfrac{1}{2 + ...}}}}$$

The infinite continued fraction can be written, $\sqrt{2} = [1; (2)]$, $(2)$ indicates that 2 repeats ad _infinitum_. In a similar way, $\sqrt{23} = [4; (1, 3, 1, 8)]$

It turns out that the sequence of partial values of continued fractions for square roots provide the best rational approximations. Let us consider the convergents for $\sqrt{2}$.

$$\begin{align}
&1 + \dfrac{1}{2} \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ = \dfrac{3}{2} \\
&1 + \dfrac{1}{2 + \dfrac{1}{2}} \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ = \dfrac{7}{5}\\
&1 + \dfrac{1}{2 + \dfrac{1}{2 + \dfrac{1}{2}}} \ \ \ \ \ \ \ \ = \dfrac{17}{12}\\
&1 + \dfrac{1}{2 + \dfrac{1}{2 + \dfrac{1}{2 + \dfrac{1}{2}}}} = \dfrac{41}{29}
\end{align}$$

Hence the sequence of the first ten convergents for $\sqrt{2}$ are:

$$1, \dfrac{3}{2}, \dfrac{7}{5}, \dfrac{17}{12}, \dfrac{41}{29}, \dfrac{99}{70}, \dfrac{239}{169}, \dfrac{577}{408}, \dfrac{1393}{985}, \dfrac{3363}{2378}, ...$$

What is most surprising is that the important mathematical constant, 

$$e = [2; 1, 2, 1, 1, 4, 1, 1, 6, 1, ... , 1, 2k, 1, ...]$$

The first ten terms in the sequence of convergents for $e$ are:

$$2, 3, \dfrac{8}{3}, \dfrac{11}{4}, \dfrac{19}{7}, \dfrac{87}{32}, \dfrac{106}{39}, \dfrac{193}{71}, \dfrac{1264}{465}, \dfrac{1457}{536}, ...$$

The sum of digits in the numerator of the $10^{th}$ convergent is $1 + 4 + 5 + 7 = 17$.

Find the sum of digits in the numerator of the $100^{th}$ convergent of the continued fraction for $e$.

## Problem 66

### Diophantine Equation

Consider quadratic Diophantine equations of the form:

$$x^2 – Dy^2 = 1$$

For example, when $D=13$, the minimal solution in $x$ is $649^2 – 13×180^2 = 1$.

It can be assumed that there are no solutions in positive integers when D is square.

By finding minimal solutions in $x$ for $D = \{2, 3, 5, 6, 7\}$, we obtain the following:

$$
3^2 – 2×2^2 = 1\\
2^2 – 3×1^2 = 1\\ 
\color{red}{9}^2 – 5×4^2 = 1\\
5^2 – 6×2^2 = 1\\
8^2 – 7×3^2 = 1
$$

Hence, by considering minimal solutions in $x$ for $D \le 7$, the largest $x$ is obtained when $D=5$.

Find the value of $D \le 1000$ in minimal solutions of $x$ for which the largest value of $x$ is obtained.

## Problem 67

### Maximum path sum II

By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

$$
\color{red}{3} \\
\color{red}{7}\ \ 4 \\
2\ \ \color{red}{4}\ \ 6 \\
8\ \ 5\ \ \color{red}{9}\ \ 3
$$  
    
That is, 3 + 7 + 4 + 9 = 23.

Find the maximum total from top to bottom in `triangle.txt`, a 15K text file containing a triangle with one-hundred rows.

> Note: This is a much more difficult version of Problem 18. It is not possible to try every route to solve this problem, as there are 299 altogether! If you could check one trillion (1012) routes every second it would take over twenty billion years to check them all. There is an efficient algorithm to solve it. ;o)

## Problem 68

### Magic 5-gon ring

Consider the following "magic" 3-gon ring, filled with the numbers 1 to 6, and each line adding to nine.

![](https://projecteuler.net/project/images/p068_1.png)

Working **clockwise**, and starting from the group of three with the numerically lowest external node (4,3,2 in this example), each solution can be described uniquely. For example, the above solution can be described by the set: 4,3,2; 6,2,1; 5,1,3.

It is possible to complete the ring with four different totals: 9, 10, 11, and 12. There are eight solutions in total.

| Total | Solution Set        |
|-------|---------------------| 
|    9  | 4,2,3; 5,3,1; 6,1,2 |
|    9  | 4,3,2; 6,2,1; 5,1,3 |
|   10  | 2,3,5; 4,5,1; 6,1,3 |
|   10  | 2,5,3; 6,3,1; 4,1,5 |
|   11  | 1,4,6; 3,6,2; 5,2,4 |
|   11  | 1,6,4; 5,4,2; 3,2,6 |
|   12  | 1,5,6; 2,6,4; 3,4,5 |
|   12  | 1,6,5; 3,5,4; 2,4,6 |

By concatenating each group it is possible to form 9-digit strings; the maximum string for a 3-gon ring is 432621513.

Using the numbers 1 to 10, and depending on arrangements, it is possible to form 16- and 17-digit strings. What is the maximum **16-digit** string for a "magic" 5-gon ring?

![](https://projecteuler.net/project/images/p068_2.png)

## Problem 69

### Totient maximum

Euler's Totient function, $\phi(n)$ [sometimes called the phi function], is used to determine the number of numbers less than n which are relatively prime to n. For example, as $1, 2, 4, 5, 7$ and $8$, are all less than nine and relatively prime to nine, $\phi(9)=6$.

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

It can be seen that $n=6$ produces a maximum $n/\phi(n)$ for $n \le 10$.

Find the value of $n \le 1\ 000\ 000$ for which $n/\phi(n)$ is a maximum.

## Problem 70

### Totient permutation

Euler's Totient function, $\phi(n)$ [sometimes called the phi function], is used to determine the number of positive numbers less than or equal to n which are relatively prime to $n$. For example, as $1, 2, 4, 5, 7$ and $8$, are all less than nine and relatively prime to nine, $\phi(9)=6$.

The number $1$ is considered to be relatively prime to every positive number, so $\phi(1)=1$.

Interestingly, $\phi(87109)=79180$, and it can be seen that $87109$ is a permutation of $79180$.

Find the value of $n, 1 < n < 107$, for which $\phi(n)$ is a permutation of $n$ and the ratio $n/\phi(n)$ produces a minimum.

## Problem 71

### Ordered fractions

Consider the fraction, $\dfrac{n}{d}$, where $n$ and $d$ are positive integers. If $n<d$ and $HCF(n,d)=1$, it is called a reduced proper fraction.

If we list the set of reduced proper fractions for $d \leq 8$ in ascending order of size, we get:

$$
\dfrac{1}{8}, \dfrac{1}{7}, \dfrac{1}{6}, \dfrac{1}{5}, \dfrac{1}{4}, \dfrac{2}{7}, \dfrac{1}{3}, \dfrac{3}{8}, \boldsymbol{\dfrac{2}{5}}, \dfrac{3}{7}, \dfrac{1}{2}, \dfrac{4}{7}, \dfrac{3}{5}, \dfrac{5}{8}, \dfrac{2}{3}, \dfrac{5}{7}, \dfrac{3}{4}, \dfrac{4}{5}, \dfrac{5}{6}, \dfrac{6}{7}, \dfrac{7}{8}
$$

It can be seen that $\dfrac{2}{5}$ is the fraction immediately to the left of $\dfrac{3}{7}$.

By listing the set of reduced proper fractions for $d \leq 1\ 000\ 000$ in ascending order of size, find the numerator of the fraction immediately to the left of $\dfrac{3}{7}$.

## Problem 72

### Counting fractions

Consider the fraction, $\dfrac{n}{d}$, where $n$ and $d$ are positive integers. If $n<d$ and $HCF(n,d)=1$, it is called a reduced proper fraction.

If we list the set of reduced proper fractions for $d \leq 8$ in ascending order of size, we get:

$$
\dfrac{1}{8}, \dfrac{1}{7}, \dfrac{1}{6}, \dfrac{1}{5}, \dfrac{1}{4}, \dfrac{2}{7}, \dfrac{1}{3}, \dfrac{3}{8}, \dfrac{2}{5}, \dfrac{3}{7}, \dfrac{1}{2}, \dfrac{4}{7}, \dfrac{3}{5}, \dfrac{5}{8}, \dfrac{2}{3}, \dfrac{5}{7}, \dfrac{3}{4}, \dfrac{4}{5}, \dfrac{5}{6}, \dfrac{6}{7}, \dfrac{7}{8}
$$

It can be seen that there are 21 elements in this set.

How many elements would be contained in the set of reduced proper fractions for $d \leq 1\ 000\ 000$?

## Problem 73

### Counting fractions in a range

Consider the fraction, $\dfrac{n}{d}$, where $n$ and $d$ are positive integers. If $n<d$ and $HCF(n,d)=1$, it is called a reduced proper fraction.

If we list the set of reduced proper fractions for $d \leq 8$ in ascending order of size, we get:

$$
\dfrac{1}{8}, \dfrac{1}{7}, \dfrac{1}{6}, \dfrac{1}{5}, \dfrac{1}{4}, \dfrac{2}{7}, \dfrac{1}{3}, \boldsymbol{\dfrac{3}{8}}, \boldsymbol{\dfrac{2}{5}}, \boldsymbol{\dfrac{3}{7}}, \dfrac{1}{2}, \dfrac{4}{7}, \dfrac{3}{5}, \dfrac{5}{8}, \dfrac{2}{3}, \dfrac{5}{7}, \dfrac{3}{4}, \dfrac{4}{5}, \dfrac{5}{6}, \dfrac{6}{7}, \dfrac{7}{8}
$$

It can be seen that there are 3 fractions between $1/3$ and $1/2$.

How many fractions lie between $\dfrac{1}{3}$ and $\dfrac{1}{2}$ in the sorted set of reduced proper fractions for $d \leq 12\ 000$?

## Problem 74

### Digit Factorial Chains

The number $145$ is well known for the property that the sum of the factorial of its digits is equal to $145$:

$$1! + 4! + 5! = 1 + 24 + 120 = 145$$

Perhaps less well known is $169$, in that it produces the longest chain of numbers that link back to $169$; it turns out that there are only three such loops that exist:

$$
169 → 363601 → 1454 → 169 \\
871 → 45361 → 871 \\
872 → 45362 → 872
$$

It is not difficult to prove that EVERY starting number will eventually get stuck in a loop. For example,

$$
69 → 363600 → 1454 → 169 → 363601 (→ 1454)\\
78 → 45360 → 871 → 45361 (→ 871)\\
540 → 145 (→ 145)\\
$$

Starting with $69$ produces a chain of five non-repeating terms, but the longest non-repeating chain with a starting number below one million is sixty terms.

How many chains, with a starting number below one million, contain exactly sixty non-repeating terms?

## Problem 75

### Singular Integer Right Triangles

It turns out that $12 cm$ is the smallest length of wire that can be bent to form an integer sided right angle triangle in exactly one way, but there are many more examples.

$$
12 cm: (3,4,5) \\
24 cm: (6,8,10) \\
30 cm: (5,12,13) \\
36 cm: (9,12,15) \\
40 cm: (8,15,17) \\
48 cm: (12,16,20) \\
$$

In contrast, some lengths of wire, like $20 cm$, cannot be bent to form an integer sided right angle triangle, and other lengths allow more than one solution to be found; for example, using $120 cm$ it is possible to form exactly three different integer sided right angle triangles.

$$
120 cm: (30,40,50), (20,48,52), (24,45,51)
$$

Given that $L$ is the length of the wire, for how many values of $L \leq 1\ 500\ 000$ can exactly one integer sided right angle triangle be formed?
