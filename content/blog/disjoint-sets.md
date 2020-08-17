+++
title = "Disjoint Sets"
date = 2020-08-12T03:39:23-04:00
tags = ["graph", "sets"]
categories = ["data-structures"]
author = "Brendan Lichtler"
[[images]]
  src = "img/2019/03/pic09.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++


<h3>Disjoint-set operations</h3>
<hr> 

A disjoint-set data structure maintains a collection S = {s_1, s_2, ... s_k} disjoint sets. We identify each set by a representative. 


<h3> Union Pseudocode: </h3>
<hr>

``` python

 function Union(x, y) is
     xRoot := Find(x)
     yRoot := Find(y)
 
     if xRoot = yRoot then
         // x and y are already in the same set
         return
 
     // x and y are not in same set, so we merge them
     if xRoot.size < yRoot.size then
         xRoot, yRoot := yRoot, xRoot // swap xRoot and yRoot
 
     // merge yRoot into xRoot
     yRoot.parent := xRoot
     xRoot.size := xRoot.size + yRoot.size

```


<h3>Set-Union Data Structures:</h3>
<hr>

Todo



<h3>Connected Components DFS Solution:</h3>
<hr>

``` c++

Connected_Components(Graph G):
    for v in vertex:
        flag[v] = -1
    count = 0

    for v in vertex:
        if flag[v] == -1 // unvisited
            dfs(v, flag)
            count++

DFS(int v, int flag) 
    flag[v] = 1
    for each adjacent node of v
        if flag[u] == - // unvisited
            DFS(u, flag)



```

<h3>Idea behind connected components DFS.</h3>
<hr>

Every node is initially marked as -1 meaning not visited.

The main loop will go over all verticies, calling a DFS function if that vertex is unvisited ( == -1).

If unvisited, a DFS function will be called. This will recursively mark the neighbors of vertex v as visited, and then have then visit their neighbors and so on.

This means that when all neighbors have been visited, the DFS call will return. Hence we increment the count.

At the end, will will know the number of connected components in the graph. 


<h3>Complexity Analysis:</h3>
<hr>

