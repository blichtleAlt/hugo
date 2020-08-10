+++
title = "814. Binary Tree Pruning"
date = 2020-08-10T17:46:40-04:00
tags = ["tree", "recursion"]
categories = ["algorithms"]
author = "Brendan Lichtler"
+++

We are given the head node root of a binary tree, where additionally every node's value is either a 0 or a 1.

Return the same tree where every subtree (of the given tree) not containing a 1 has been removed.

(Recall that the subtree of a node X is X, plus every node that is a descendant of X.)

Example 1:

``` python
      1
       \
        0
       / \
      0   1
```

Return: 

``` python
      1
       \
        0
         \
          1
```

Exmaple 2:

``` python
       1
     /   \
    0     1
   / \   / \
  0   0 0   1
```

Return: 

```python
        1
         \
          1
           \
            1
```

