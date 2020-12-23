+++
title = "226. Invert Binary Tree"
date = 2020-12-22T22:36:56-05:00
tags = ["tree", "recursion", "easy"]
categories = ["algorithms"]
author = "Brendan Lichtler"
[[images]]
  src = "img/2019/03/pic11.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++



<h3>Problem Statement:</h3>
<hr> 

Invert a binary tree.


<h3>Idea:</h3>
<hr>

Here we just use a simple recursive solution. Just swap your children pointers, then call recursively on the children. Eventually everynode will swap the children pointers, and the tree will be inverted. 

<h3>Solution:</h3>
<hr>

``` C++ 

    void swapChildren(TreeNode* root) {
        if(!root) {
            return;
        } else {
            std::swap(root->left, root->right);
            swapChildren(root->left);
            swapChildren(root->right);      
        }
    }
    
    
    TreeNode* invertTree(TreeNode* root) {
        swapChildren(root);
        return root;
    }

```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

O(H) where H is the height of the tree.

<h5><b>Memory</b></h5>

O(H) where H is the height of the tree, memory used in the form of stack frames from recursive calls.
