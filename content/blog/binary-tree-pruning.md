+++
title = "814. Binary Tree Pruning"
date = 2020-08-10T17:46:40-04:00
tags = ["tree", "recursion"]
categories = ["algorithms"]
author = "Brendan Lichtler"
+++

https://leetcode.com/problems/binary-tree-pruning/

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
<h3>Idea:</h3>
The idea here is to make a recursive helper function that will tell us if a given subtree contains a zero. We call this function on the root, and it will be recursively called on the subtrees. If we find at any point a given subtree contains a zero, that branch is effectively removed by setting the subtree to nullptr.

At the end, all subtrees that contain zero will be removed.

<h3>Solution:</h3>

``` C++ 
    class Solution {
    public:
    
    bool has_one(TreeNode* root) {
        if(root == nullptr) return false;
        bool left = has_one(root->left);
        bool right = has_one(root->right);
        if(!left) root->left = nullptr;
        if(!right) root->right = nullptr;
        return left || right || root->val == 1;
    }
    
    TreeNode* pruneTree(TreeNode* root) {
        return has_one(root) ? root: nullptr;
    }
    
};


```
