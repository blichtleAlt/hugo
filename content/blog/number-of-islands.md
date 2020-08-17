+++
title = "Number of Islands"
date = 2020-08-12T23:17:44-04:00
tags = ["tree", "recursion", "medium"]
categories = ["algorithms"]
author = "Brendan Lichtler"
+++

TODO: Link

<h3>Problem Statement:</h3>
<hr> 


<h3>Examples</h3>
<hr>
<h4>1:</h4>
<div class="leetcode"> <img src="https://s3-lc-upload.s3.amazonaws.com/uploads/2018/04/06/1028_2.png" ></img> </div>
<h4>2:</h4>
<div class="leetcode"> <img src="https://s3-lc-upload.s3.amazonaws.com/uploads/2018/04/06/1028_1.png" ></img> </div>
<h4>3:</h4>
<div class="leetcode"> <img src="https://s3-lc-upload.s3.amazonaws.com/uploads/2018/04/05/1028.png" ></img> </div>

<h3>Idea:</h3>
<hr>

This question is analogous to the problem of connected components in an undirected graph. 

Here I used recursion for a depth first search. 

<h3>Solution:</h3>
<hr>

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

// todo: union find implementation

``` C++

```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

Worst case is O(M X N) where M and N are the dimensions of the input grid. 

<h5><b>Memory</b></h5>

Here we reuse the input grid which is good. However 
