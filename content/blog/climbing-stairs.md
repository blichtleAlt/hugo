+++
title = "70. Climbing Stairs"
description = ""
author = "Brendan Lichtler "
date = 2022-11-21T20:39:44-08:00
tags = ["dynamic programming", "easy", "math"]
categories = ["algorithms"]
[[images]]
  src = "img/2019/03/pic25.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++

https://leetcode.com/problems/climbing-stairs/

You are climbing a staircase. It takes n steps to reach the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

<h3>Idea:</h3>


<h3>Solution:</h3>


```

C = C(N - 2) + C(N - 1)

C(1) = 1
C(2) = 2

```

``` 

class Solution {

public:
    int climbStairs(int n) {
        if (n == 1)
            return 1;

        int first = 1, second = 2;
        for(int i = 3; i <= n; ++i) {
            int third = first + second;
            first = second, second = third;
        }

        return second;
    }
};

```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

O(N)

<h5><b>Memory</b></h5>

1
