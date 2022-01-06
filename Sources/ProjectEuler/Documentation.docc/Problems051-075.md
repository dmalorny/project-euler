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

## Problem 54

Poker hands

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

Lychrel numbers

If we take 47, reverse and add, 47 + 74 = 121, which is palindromic.

Not all numbers produce palindromes so quickly. For example,

     349 +  943 = 1292,
    1292 + 2921 = 4213
    4213 + 3124 = 7337

That is, 349 took three iterations to arrive at a palindrome.

Although no one has proved it yet, it is thought that some numbers, like 196, never produce a palindrome. A number that never forms a palindrome through the reverse and add process is called a Lychrel number. Due to the theoretical nature of these numbers, and for the purpose of this problem, we shall assume that a number is Lychrel until proven otherwise. In addition you are given that for every number below ten-thousand, it will either (i) become a palindrome in less than fifty iterations, or, (ii) no one, with all the computing power that exists, has managed so far to map it to a palindrome. In fact, 10677 is the first number to be shown to require over fifty iterations before producing a palindrome: 4668731596684224866951378664 (53 iterations, 28-digits).

Surprisingly, there are palindromic numbers that are themselves Lychrel numbers; the first example is 4994.

How many Lychrel numbers are there below ten-thousand?

> Note: Wording was modified slightly on 24 April 2007 to emphasise the theoretical nature of Lychrel numbers.

## Problem 56 

Powerful digit sum

A googol ($$10^{100}$$) is a massive number: one followed by one-hundred zeros; $$100^{100}$$ is almost unimaginably large: one followed by two-hundred zeros. Despite their size, the sum of the digits in each number is only 1.

Considering natural numbers of the form, $$a^b$$, where $$a, b < 100$$, what is the maximum digital sum?

## Problem 57

Square root convergents

It is possible to show that the square root of two can be expressed as an infinite continued fraction.

$$\sqrt 2 =1+ \frac 1 {2+ \frac 1 {2 +\frac 1 {2+ \dots}}}$$

By expanding this for the first four iterations, we get:

$$1 + \frac 1 2 = \frac  32 = 1.5$$

$$1 + \frac 1 {2 + \frac 1 2} = \frac 7 5 = 1.4$$

$$1 + \frac 1 {2 + \frac 1 {2+\frac 1 2}} = \frac {17}{12} = 1.41666 \dots$$

$$1 + \frac 1 {2 + \frac 1 {2+\frac 1 {2+\frac 1 2}}} = \frac {41}{29} = 1.41379 \dots$$

The next three expansions are $$\frac {99}{70}$$, $$\frac {239}{169}$$ and $$\frac {577}{408}$$, but the eighth expansion, $$\frac {1393}{985}$$ is the first example where the number of digits in the numerator exceeds the number of digits in the denominator.

In the first one-thousand expansions, how many fractions contain a numerator with more digits than the denominator?

## Problem 58

Starting with 1 and spiralling anticlockwise in the following way, a square spiral with side length 7 is formed.

    37 36 35 34 33 32 31
    38 17 16 15 14 13 30
    39 18  5  4  3 12 29
    40 19  6  1  2 11 28
    41 20  7  8  9 10 27
    42 21 22 23 24 25 26
    43 44 45 46 47 48 49

It is interesting to note that the odd squares lie along the bottom right diagonal, but what is more interesting is that 8 out of the 13 numbers lying along both diagonals are prime; that is, a ratio of 8/13 ≈ 62%.

If one complete new layer is wrapped around the spiral above, a square spiral with side length 9 will be formed. If this process is continued, what is the side length of the square spiral for which the ratio of primes along both diagonals first falls below 10%?

## Problem 59

XOR decryption

Each character on a computer is assigned a unique code and the preferred standard is ASCII (American Standard Code for Information Interchange). For example, uppercase A = 65, asterisk (*) = 42, and lowercase k = 107.

A modern encryption method is to take a text file, convert the bytes to ASCII, then XOR each byte with a given value, taken from a secret key. The advantage with the XOR function is that using the same encryption key on the cipher text, restores the plain text; for example, 65 XOR 42 = 107, then 107 XOR 42 = 65.

For unbreakable encryption, the key is the same length as the plain text message, and the key is made up of random bytes. The user would keep the encrypted message and the encryption key in different locations, and without both "halves", it is impossible to decrypt the message.

Unfortunately, this method is impractical for most users, so the modified method is to use a password as a key. If the password is shorter than the message, which is likely, the key is repeated cyclically throughout the message. The balance for this method is using a sufficiently long password key for security, but short enough to be memorable.

Your task has been made easy, as the encryption key consists of three lower case characters. Using `cipher.txt`, a file containing the encrypted ASCII codes, and the knowledge that the plain text must contain common English words, decrypt the message and find the sum of the ASCII values in the original text.

## Problem 60

Prime pair sets

The primes 3, 7, 109, and 673, are quite remarkable. By taking any two primes and concatenating them in any order the result will always be prime. For example, taking 7 and 109, both 7109 and 1097 are prime. The sum of these four primes, 792, represents the lowest sum for a set of four primes with this property.

Find the lowest sum for a set of five primes for which any two primes concatenate to produce another prime.

## Problem 67

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
