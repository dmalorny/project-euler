# Problems 76 - 100

Problem descriptions of problems 76 to 100

##  Problem 76

### Counting Summations

It is possible to write five as a sum in exactly six different ways:

    4 + 1
    3 + 2
    3 + 1 + 1
    2 + 2 + 1
    2 + 1 + 1 + 1
    1 + 1 + 1 + 1 + 1

How many different ways can one hundred be written as a sum of at least two positive integers?


##  Problem 78

### Coin Partitions

Let $p(n)$ represent the number of different ways in which $n$ coins can be separated into piles. For example, five coins can be separated into piles in exactly seven different ways, so $p(5) = 7$.

    OOOOO
    OOOO   O
    OOO   OO
    OOO   O   O
    OO   OO   O
    OO   O   O   O
    O   O   O   O   O

Find the least value of $n$ for which $p(n)$ is divisible by one million.

##  Problem 79

### Passcode derivation

A common security method used for online banking is to ask the user for three random characters from a passcode. For example, if the passcode was 531278, they may ask for the 2nd, 3rd, and 5th characters; the expected reply would be: 317.

The text file, `keylog.txt`, contains fifty successful login attempts.

Given that the three characters are always asked for in order, analyse the file so as to determine the shortest possible secret passcode of unknown length.

## Problem 80

### Square Root Digital Expansion

It is well known that if the square root of a natural number is not an integer, then it is irrational. The decimal expansion of such square roots is infinite without any repeating pattern at all.

The square root of two is $1.41421356237309504880...$, and the digital sum of the first one hundred decimal digits is $475$.

For the first one hundred natural numbers, find the total of the digital sums of the first one hundred decimal digits for all the irrational square roots.

## Problem 81

### Path sum: two ways

In the $5$ by $5$ matrix below, the minimal path sum from the top left to the bottom right, by only moving to the right and down, is indicated in bold red and is equal to $2427$.

$$
\begin{pmatrix}
\color{red}{131} & 673 & 234 & 103 & 18\\
\color{red}{201} & \color{red}{96} & \color{red}{342} & 965 & 150\\
630 & 803 & \color{red}{746} & \color{red}{422} & 111\\
537 & 699 & 497 & \color{red}{121} & 956\\
805 & 732 & 524 & \color{red}{37} & \color{red}{331}
\end{pmatrix}
$$

Find the minimal path sum from the top left to the bottom right by only moving right and down in `matrix.txt`, a 31K text file containing an $8$0 by $80$ matrix.

## Problem 82

### Path sum: three ways

> Note: This problem is a more challenging version of Problem 81.

The minimal path sum in the $5$ by $5$ matrix below, by starting in any cell in the left column and finishing in any cell in the right column, and only moving up, down, and right, is indicated in red and bold; the sum is equal to $994$.

$$
\begin{pmatrix}
131 & 673 & \color{red}{234} & \color{red}{103} & \color{red}{18}\\
\color{red}{201} & \color{red}{96} & \color{red}{342} & 965 & 150\\
630 & 803 & 746 & 422 & 111\\
537 & 699 & 497 & 121 & 956\\
805 & 732 & 524 & 37 & 331
\end{pmatrix}
$$

Find the minimal path sum from the left column to the right column in `matrix.txt`, a 31K text file containing an $80$ by $80$ matrix.

## Problem 83

### Path sum: four ways

> Note: This problem is a more challenging version of Problem 81.

In the $5$ by $5$ matrix below, the minimal path sum from the top left to the bottom right, by moving left, right, up, and down, is indicated in bold red and is equal to $2297$.

$$
\begin{pmatrix}
\color{red}{131} & 673 & \color{red}{234} & \color{red}{103} & \color{red}{18}\\
\color{red}{201} & \color{red}{96} & 342 & 965 & \color{red}{150}\\
630 & 803 & 746 & \color{red}{422} & \color{red}{111}\\
537 & 699 & 497 & \color{red}{121} & 956\\
805 & 732 & 524 & \color{red}{37} & \color{red}{331}
\end{pmatrix}
$$

Find the minimal path sum from the top left to the bottom right by moving left, right, up, and down in `matrix.txt`, a 31K text file containing an $80$ by $80$ matrix.

## Problem 85

### Counting Rectangles

By counting carefully it can be seen that a rectangular grid measuring $3$ by $2$ contains eighteen rectangles:

![](https://projecteuler.net/project/images/p085.png)

Although there exists no rectangular grid that contains exactly two million rectangles, find the area of the grid with the nearest solution.

## Problem 87

### Prime Power Triples

The smallest number expressible as the sum of a prime square, prime cube, and prime fourth power is $28$. In fact, there are exactly four numbers below fifty that can be expressed in such a way:

$$
28 = 2^2 + 2^3 + 2^4 \\
33 = 3^2 + 3^3 + 2^4 \\
49 = 5^2 + 3^3 + 2^4 \\
47 = 2^2 + 3^3 + 2^4
$$

How many numbers below fifty million can be expressed as the sum of a prime square, prime cube, and prime fourth power?

## Problem 89

### Roman numerals

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

## Problem 91

### Right Triangles with Integer Coordinates

The points $P(x_1,y_1)$ and $Q(x_2,y_2)$ are plotted at integer co-ordinates and are joined to the origin, $O(0,0)$, to form $△OPQ$.

![](https://projecteuler.net/resources/images/0091_1.png)

There are exactly fourteen triangles containing a right angle that can be formed when each co-ordinate lies between $0$ and $2$ inclusive; that is, $0 \leq x_1,y_1,x_2,y_2 \leq 2$.

![](https://projecteuler.net/resources/images/0091_2.png)

Given that $0 \leq x_1,y_1,x_2,y_2 \leq 50$, how many right triangles can be formed?

## Problem 92

### Square digit chains

A number chain is created by continuously adding the square of the digits in a number to form a new number until it has been seen before.

For example,

$$44 → 32 → 13 → 10 → \boldsymbol{1} → \boldsymbol{1}$$
 
$$85 → \boldsymbol{89} → 145 → 42 → 20 → 4 → 16 → 37 → 58 → \boldsymbol{89}$$

Therefore any chain that arrives at $1$ or $89$ will become stuck in an endless loop. What is most amazing is that EVERY starting number will eventually arrive at $1$ or $89$.

How many starting numbers below ten million will arrive at $89$?

## Problem 96

### Su Doku

Su Doku (Japanese meaning _number place_) is the name given to a popular puzzle concept. Its origin is unclear, but credit must be attributed to Leonhard Euler who invented a similar, and much more difficult, puzzle idea called Latin Squares. The objective of Su Doku puzzles, however, is to replace the blanks (or zeros) in a 9 by 9 grid in such that each row, column, and 3 by 3 box contains each of the digits 1 to 9. Below is an example of a typical starting puzzle grid and its solution grid.

![](https://projecteuler.net/project/images/p096_1.png)
![](https://projecteuler.net/project/images/p096_2.png)

A well constructed Su Doku puzzle has a unique solution and can be solved by logic, although it may be necessary to employ "guess and test" methods in order to eliminate options (there is much contested opinion over this). The complexity of the search determines the difficulty of the puzzle; the example above is considered easy because it can be solved by straight forward direct deduction.

The 6K text file, `sudoku.txt`, contains fifty different Su Doku puzzles ranging in difficulty, but all with unique solutions (the first puzzle in the file is the example above).

By solving all fifty puzzles find the sum of the 3-digit numbers found in the top left corner of each solution grid; for example, 483 is the 3-digit number found in the top left corner of the solution grid above.

## Problem 97

### Large non-Mersenne prime

The first known prime found to exceed one million digits was discovered in 1999, and is a Mersenne prime of the form $2^{6972593} − 1$; it contains exactly $2\ 098\ 960$ digits. Subsequently other Mersenne primes, of the form $2^p − 1$, have been found which contain more digits.

However, in 2004 there was found a massive non-Mersenne prime which contains $2\ 357\ 207$ digits: $28433 × 2^{7830457} + 1$.

Find the last ten digits of this prime number.

## Problem 99

### Largest exponential

Comparing two numbers written in index form like $2^{11}$ and $3^7$ is not difficult, as any calculator would confirm that $2^{11} = 2048 < 3^7 = 2187$.

However, confirming that $632382^{518061} > 519432^{525806}$ would be much more difficult, as both numbers contain over three million digits.

Using `base_exp.txt`, a 22K text file containing one thousand lines with a base/exponent pair on each line, determine which line number has the greatest numerical value.

> Note: The first two lines in the file represent the numbers in the example given above.


## Problem 100

### Arranged Probability

If a box contains twenty-one coloured discs, composed of fifteen blue discs and six red discs, and two discs were taken at random, it can be seen that the probability of taking two blue discs, $P(BB) = (15/21) * (14/20) = 1/2$.

The next such arrangement, for which there is exactly $50\%$ chance of taking two blue discs at random, is a box containing eighty-five blue discs and thirty-five red discs.

By finding the first arrangement to contain over $10^{12} = 1\ 000\ 000\ 000\ 000$ discs in total, determine the number of blue discs that the box would contain.
