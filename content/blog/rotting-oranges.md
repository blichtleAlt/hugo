+++
title = "994. Rotting Oranges"
date = 2020-08-17T18:14:12-04:00
tags = ["medium"]
categories = ["algorithms"]
author = "Brendan Lichtler"
[[images]]
  src = "img/2019/03/pic14.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++

https://leetcode.com/problems/rotting-oranges/

<h3>Problem Statement:</h3>
<hr> 

In a given grid, each cell can have one of three values:

the value 0 representing an empty cell;
the value 1 representing a fresh orange;
the value 2 representing a rotten orange.
Every minute, any fresh orange that is adjacent (4-directionally) to a rotten orange becomes rotten.

Return the minimum number of minutes that must elapse until no cell has a fresh orange.  If this is impossible, return -1 instead.


<h3>Examples</h3>
<hr>

<h4>1:</h4>
<div class="leetcode"> <img src="https://assets.leetcode.com/uploads/2019/02/16/oranges.png" ></img> </div>

``` python 

Input: [[2,1,1],[1,1,0],[0,1,1]]
Output: 4

```

<h4>2:</h4>

``` python

Input: [[2,1,1],[0,1,1],[1,0,1]]
Output: -1
Explanation:  The orange in the bottom left corner (row 2, column 0) is never rotten, because rotting only happens 4-directionally.

```

<h4>3:</h4>

``` python 

Input: [[0,2]]
Output: 0
Explanation:  Since there are already no fresh oranges at minute 0, the answer is just 0.

```

<h3>Idea:</h3>
<hr>

<h3>Solution:</h3>
<hr>

``` C++ 

class Solution {
public:
    int orangesRotting(vector<vector<int>>& grid) {
        
    }
};

```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

<h5><b>Memory</b></h5>
