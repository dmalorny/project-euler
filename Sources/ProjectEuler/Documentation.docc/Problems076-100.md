# Problems 76 - 100

Problem descriptions of problems 76 to 100

## Problem 76

### Counting Summations

It is possible to write five as a sum in exactly six different ways:

    4 + 1
    3 + 2
    3 + 1 + 1
    2 + 2 + 1
    2 + 1 + 1 + 1
    1 + 1 + 1 + 1 + 1

How many different ways can one hundred be written as a sum of at least two positive integers?

## Problem 77

### Prime Summations

It is possible to write ten as the sum of primes in exactly five different ways:

	7 + 3
	5 + 5
	5 + 3 + 2
	3 + 3 + 2 + 2
	2 + 2 + 2 + 2 + 2

What is the first value which can be written as the sum of primes in over five thousand different ways?

## Problem 78

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

## Problem 79

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

## Problem 84

### Monopoly Odds

In the game, **Monopoly**, the standard board is set up in the following way:

![](https://projecteuler.net/resources/images/0084_monopoly_board.png)

A player starts on the GO square and adds the scores on two 6-sided dice to determine the number of squares they advance in a clockwise direction. Without any further rules we would expect to visit each square with equal probability: 2.5%. However, landing on G2J (Go To Jail), CC (community chest), and CH (chance) changes this distribution.

In addition to G2J, and one card from each of CC and CH, that orders the player to go directly to jail, if a player rolls three consecutive doubles, they do not advance the result of their 3rd roll. Instead they proceed directly to jail.

At the beginning of the game, the CC and CH cards are shuffled. When a player lands on CC or CH they take a card from the top of the respective pile and, after following the instructions, it is returned to the bottom of the pile. There are sixteen cards in each pile, but for the purpose of this problem we are only concerned with cards that order a movement; any instruction not concerned with movement will be ignored and the player will remain on the CC/CH square.

- Community Chest (2/16 cards):
    1. Advance to GO
    2. Go to JAIL
    
- Chance (10/16 cards):
    1. Advance to GO
    2. Go to JAIL
    3. Go to C1
    4. Go to E3
    5. Go to H2
    6. Go to R1
    7. Go to next R (railway company)
    8. Go to next R
    9. Go to next U (utility company)
    10. Go back 3 squares.

The heart of this problem concerns the likelihood of visiting a particular square. That is, the probability of finishing at that square after a roll. For this reason it should be clear that, with the exception of G2J for which the probability of finishing on it is zero, the CH squares will have the lowest probabilities, as 5/8 request a movement to another square, and it is the final square that the player finishes at on each roll that we are interested in. We shall make no distinction between "Just Visiting" and being sent to JAIL, and we shall also ignore the rule about requiring a double to "get out of jail", assuming that they pay to get out on their next turn.

By starting at GO and numbering the squares sequentially from 00 to 39 we can concatenate these two-digit numbers to produce strings that correspond with sets of squares.

Statistically it can be shown that the three most popular squares, in order, are JAIL (6.24%) = Square 10, E3 (3.18%) = Square 24, and GO (3.09%) = Square 00. So these three most popular squares can be listed with the six-digit modal string: 102400.

If, instead of using two 6-sided dice, two 4-sided dice are used, find the six-digit modal string.

## Problem 85

### Counting Rectangles

By counting carefully it can be seen that a rectangular grid measuring $3$ by $2$ contains eighteen rectangles:

![](https://projecteuler.net/project/images/p085.png)

Although there exists no rectangular grid that contains exactly two million rectangles, find the area of the grid with the nearest solution.

## Problem 86

### Cuboid Route

A spider, S, sits in one corner of a cuboid room, measuring $6$ by $5$ by $3$, and a fly, F, sits in the opposite corner. By travelling on the surfaces of the room the shortest "straight line" distance from S to F is $10$ and the path is shown on the diagram.

![](https://projecteuler.net/resources/images/0086.png)

However, there are up to three "shortest" path candidates for any given cuboid and the shortest route doesn't always have integer length.

It can be shown that there are exactly $2060$ distinct cuboids, ignoring rotations, with integer dimensions, up to a maximum size of $M$ by $M$ by $M$, for which the shortest route has integer length when $M = 100$. This is the least value of $M$ for which the number of solutions first exceeds two thousand; the number of solutions when $M = 99$ is $1975$.

Find the least value of $M$ such that the number of solutions first exceeds one million.

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

## Problem 95

### Amicable Chains

The proper divisors of a number are all the divisors excluding the number itself. For example, the proper divisors of $28$ are $1$, $2$, $4$, $7$ and $14$. As the sum of these divisors is equal to $28$, we call it a perfect number.

Interestingly the sum of the proper divisors of $220$ is $284$ and the sum of the proper divisors of $284$ is $220$, forming a chain of two numbers. For this reason, $220$ and $284$ are called an amicable pair.

Perhaps less well known are longer chains. For example, starting with $12496$, we form a chain of five numbers:

$$12496 → 14288 → 15472 → 14536 → 14264 (→12496 → ...)$$

Since this chain returns to its starting point, it is called an amicable chain.

Find the smallest member of the longest amicable chain with no element exceeding one million.

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
