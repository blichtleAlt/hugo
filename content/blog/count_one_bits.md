+++
title = "191. Number of 1 Bits"
date = 2020-12-22T21:41:48-05:00
tags = ["bit manipulation"]
categories = ["algorithms" ]
[[images]]
  src = "img/2019/03/pic10.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
author = "Brendan Lichtler"
+++

https://leetcode.com/problems/number-of-1-bits/

<h3>Problem Statement:</h3>
<hr> 

Return the number of bits set to 1 in a 4 byte integer.


<h3>Idea:</h3>
<hr>

The idea here is to use a clever trick, created by Brian Kernighan. Instead of doing a naive O(N) traversal over the bits of the input integer, this algorthim works by removing the rightmost 1 bit iteratively until the number is zero.

Therefore, the number of iterations the algorithm takes to converge depends on the number of bits set to 1 on the input integer.

For example, the number 5 has 2 bits set to 1. ( 0101 ).
Kernighan's algorithm only takes 2 iterations here.

The idea is showcases in the code below. It uses clever bit manipulation to find the right most 1 bit and remove it. 

<h3>Solution:</h3>
<hr>

``` C++ 


int count_one_bits(int x) {
    int count = 0;

    while(x != 0) {

        // Update count.
        count += 1;

        // Remove the rightmost one bit.
        x &= (x-1);
    }

    return count;
}



```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

O(N) time in the worst case that all bits on the input are zero. Faster on the common case where this isn't true.

<h5><b>Memory</b></h5>

O(1) memory.
