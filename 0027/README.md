#  Problem 27

Euler discovered the remarkable quadratic formula:

<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <msup>
    <mi>n</mi>
    <mn>2</mn>
  </msup>
  <mo>+</mo>
  <mi>n</mi>
  <mo>+</mo>
  <mn>41</mn>
</math>

It turns out that the formula will produce 40 primes for the consecutive integer values 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mn>0</mn>
  <mo>&#x2264;</mo>
  <mi>n</mi>
  <mo>&#x2264;</mo>
  <mn>39</mn>
</math>. However, when 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mi>n</mi>
  <mo>=</mo>
  <mn>40</mn>
  <mo>,</mo>
  <msup>
    <mn>40</mn>
    <mn>2</mn>
  </msup>
  <mo>+</mo>
  <mn>40</mn>
  <mo>+</mo>
  <mn>41</mn>
  <mo>=</mo>
  <mn>40</mn>
  <mo stretchy="false">(</mo>
  <mn>40</mn>
  <mo>+</mo>
  <mn>1</mn>
  <mo stretchy="false">)</mo>
  <mo>+</mo>
  <mn>41</mn>
</math> is divisible by 41, and certainly when 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mi>n</mi>
  <mo>=</mo>
  <mn>41</mn>
  <mo>,</mo>
  <msup>
    <mn>41</mn>
    <mn>2</mn>
  </msup>
  <mo>+</mo>
  <mn>41</mn>
  <mo>+</mo>
  <mn>41</mn>
</math> is clearly divisible by 41.

The incredible formula 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <msup>
    <mi>n</mi>
    <mn>2</mn>
  </msup>
  <mo>&#x2212;</mo>
  <mn>79</mn>
  <mi>n</mi>
  <mo>+</mo>
  <mn>1601</mn>
</math> was discovered, which produces 80 primes for the consecutive values 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mn>0</mn>
  <mo>&#x2264;</mo>
  <mi>n</mi>
  <mo>&#x2264;</mo>
  <mn>79</mn>
</math>. The product of the coefficients, −79 and 1601, is −126479.

Considering quadratics of the form:

<math xmlns="http://www.w3.org/1998/Math/MathML">
  <msup>
    <mi>n</mi>
    <mn>2</mn>
  </msup>
  <mo>+</mo>
  <mi>a</mi>
  <mi>n</mi>
  <mo>+</mo>
  <mi>b</mi>
</math>, where 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mo stretchy="false">|</mo>
  <mi>a</mi>
  <mrow data-mjx-texclass="ORD">
    <mo stretchy="false">|</mo>
  </mrow>
  <mo>&lt;</mo>
  <mn>1000</mn>
</math> and 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mo stretchy="false">|</mo>
  <mi>b</mi>
  <mrow data-mjx-texclass="ORD">
    <mo stretchy="false">|</mo>
  </mrow>
  <mo>&#x2264;</mo>
  <mn>1000</mn>
</math>

where 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mo stretchy="false">|</mo>
  <mi>n</mi>
  <mo stretchy="false">|</mo>
</math>
 is the modulus/absolute value of 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mi>n</mi>
</math>

e.g. 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mo stretchy="false">|</mo>
  <mn>11</mn>
  <mrow data-mjx-texclass="ORD">
    <mo stretchy="false">|</mo>
  </mrow>
  <mo>=</mo>
  <mn>11</mn>
</math> and 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mo stretchy="false">|</mo>
  <mo>&#x2212;</mo>
  <mn>4</mn>
  <mrow data-mjx-texclass="ORD">
    <mo stretchy="false">|</mo>
  </mrow>
  <mo>=</mo>
  <mn>4</mn>
</math>

Find the product of the coefficients, 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mi>a</mi>
</math> and 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mi>b</mi>
</math>, for the quadratic expression that produces the maximum number of primes for consecutive values of 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mi>n</mi>
</math>, starting with 
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mi>n</mi>
  <mo>=</mo>
  <mn>0</mn>
</math>.