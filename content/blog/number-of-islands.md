+++
title = "200. Number of Islands"
date = 2020-08-12T23:17:44-04:00
tags = ["union-find", "dfs", "bfs", "medium"]
categories = ["algorithms"]
author = "Brendan Lichtler"
+++

https://leetcode.com/problems/number-of-islands/solution/

<h3>Problem Statement:</h3>
<hr> 

Given a 2d grid map of '1's (land) and '0's (water), count the number of islands. An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.


<h3>Examples</h3>
<hr>
<h4>1:</h4>

``` python 

Input: grid = [
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"],
  ["0","0","0","0","0"]
]
Output: 1

```

<h4>2:</h4>

``` python 

Input: grid = [
  ["1","1","0","0","0"],
  ["1","1","0","0","0"],
  ["0","0","1","0","0"],
  ["0","0","0","1","1"]
]
Output: 3

```


<h3>Idea:</h3>
<hr>

This question is analogous to the problem of connected components in an undirected graph. 

Here I used recursion for a depth first search. 

<h3>Solution:</h3>
<hr>

<h4>DFS:</h4>

``` C++ 

void dfs(int i, int j, vector<vector<char>>& grid) {
        // exit if search exhuasted
        if(i < 0 || j < 0 || i >= grid.size() || j >= grid[0].size() || grid[i][j] != '1')
            return;
        
        grid[i][j] = '0';
        dfs(i - 1, j, grid);
        dfs(i, j - 1, grid);
        dfs(i + 1, j, grid);
        dfs(i, j + 1, grid);
    }
    
    int numIslands(vector<vector<char>>& grid) {
        for(unsigned i = 0; i < grid.size(); ++i) {
            for(unsigned j = 0; j < grid[0].size(); ++j) {
                if(grid[i][j] == '1') {
                    dfs(i, j, grid);
                    ++count;
                }
            }
        }
        
        return count;
    }

```

<h4>Union Find:</h4>

``` c++

    int numIslands(vector<vector<char>>& grid) {

    }
```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

Worst case is O(M X N) where M and N are the dimensions of the input grid. 

<h5><b>Memory</b></h5>

Here we reuse the input grid which is good. However since it is recursive, its possible to use O(MxN) memory in the case where the grid is all ones.
