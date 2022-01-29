# Problems 76 - 100

Problem descriptions of problems 76 to 100

##  Problem 79

Passcode derivation

A common security method used for online banking is to ask the user for three random characters from a passcode. For example, if the passcode was 531278, they may ask for the 2nd, 3rd, and 5th characters; the expected reply would be: 317.

The text file, `keylog.txt`, contains fifty successful login attempts.

Given that the three characters are always asked for in order, analyse the file so as to determine the shortest possible secret passcode of unknown length.

## Problem 81

Path sum: two ways

In the 5 by 5 matrix below, the minimal path sum from the top left to the bottom right, by only moving to the right and down, is indicated in bold red and is equal to 2427.

$$
\begin{pmatrix}
\color{red}{131} & 673 & 234 & 103 & 18\\
\color{red}{201} & \color{red}{96} & \color{red}{342} & 965 & 150\\
630 & 803 & \color{red}{746} & \color{red}{422} & 111\\
537 & 699 & 497 & \color{red}{121} & 956\\
805 & 732 & 524 & \color{red}{37} & \color{red}{331}
\end{pmatrix}
$$

Find the minimal path sum from the top left to the bottom right by only moving right and down in `matrix.txt`, a 31K text file containing an 80 by 80 matrix.

## Problem 89

Roman numerals

For a number written in Roman numerals to be considered valid there are basic rules which must be followed. Even though the rules allow some numbers to be expressed in more than one way there is always a "best" way of writing a particular number.

For example, it would appear that there are at least six ways of writing the number sixteen:

    IIIIIIIIIIIIIIII
    VIIIIIIIIIII
    VVIIIIII
    XIIIIII
    VVVI
    XVI

However, according to the rules only `XIIIIII` and `XVI` are valid, and the last example is considered to be the most efficient, as it uses the least number of numerals.

The 11K text file, `roman.txt`, contains one thousand numbers written in valid, but not necessarily minimal, Roman numerals; see [About... Roman Numerals](https://projecteuler.net/about=roman_numerals) for the definitive rules for this problem.

Find the number of characters saved by writing each of these in their minimal form.

> Note: You can assume that all the Roman numerals in the file contain no more than four consecutive identical units.

## Problem 92

Square digit chains

A number chain is created by continuously adding the square of the digits in a number to form a new number until it has been seen before.

For example,

44 → 32 → 13 → 10 → **1** → **1**
 
85 → **89** → 145 → 42 → 20 → 4 → 16 → 37 → 58 → **89**

Therefore any chain that arrives at 1 or 89 will become stuck in an endless loop. What is most amazing is that EVERY starting number will eventually arrive at 1 or 89.

How many starting numbers below ten million will arrive at 89?

## Problem 97

Large non-Mersenne prime

The first known prime found to exceed one million digits was discovered in 1999, and is a Mersenne prime of the form $$2^{6972593} − 1$$; it contains exactly 2,098,960 digits.

Subsequently other Mersenne primes, of the form $$2^p − 1$$, have been found which contain more digits.

However, in 2004 there was found a massive non-Mersenne prime which contains 2,357,207 digits: $$28433 × 2^{7830457} + 1$$.

Find the last ten digits of this prime number.
