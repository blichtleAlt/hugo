+++
title = "100. Same Tree"
description = ""
author = "Brendan Lichtler "
date = 2020-08-10T01:55:08-04:00
tags = ["tree", "recursion", "easy"]
categories = ["algorithms"]
+++

https://leetcode.com/problems/same-tree/

Given two binary trees, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical and the nodes have the same value.

<h3>Idea:</h3>
Recursively check each node in each tree. 

If both are null, we've gone off the end so return true
If one is null and the other isn't, there is a difference.
If one has a val that isn't equal to the other, there is a difference.
Otherwise recursively call on the subtrees.

<h3>Solution:</h3>

``` c++
class solution {
public:
    bool issametree(treenode* p, treenode* q) {
        if(!p and !q) return true;
        if(!p or !q) return false;
        if(p->val != q->val) return false;
        return issametree(p->left, q->left) && issametree(p->right, q->right);
    }
};
```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>
O(N). Each node in each tree compared.

<h5><b>Memory</b></h5>
O(N). Worst case stack usage if trees are unbalanced.