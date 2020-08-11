+++
title = "814. Binary Tree Pruning"
date = 2020-08-10T17:46:40-04:00
tags = ["tree", "recursion", "medium"]
categories = ["algorithms"]
author = "Brendan Lichtler"
+++

https://leetcode.com/problems/binary-tree-pruning/

<h3>Problem Statement:</h3>
<hr> 
We are given the head node root of a binary tree, where additionally every node's value is either a 0 or a 1.

Return the same tree where every subtree (of the given tree) not containing a 1 has been removed.

(Recall that the subtree of a node X is X, plus every node that is a descendant of X.)

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
The idea here is to make a recursive helper function that will tell us if a given subtree contains a zero. We call this function on the root, and it will be recursively called on the subtrees. If we find at any point a given subtree contains a zero, that branch is effectively removed by setting the subtree to nullptr.

At the end, all subtrees that contain zero will be removed.

<h3>Solution:</h3>
<hr>

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

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>
Time Complexity here is O(N). We process each node once in the process.

<h5><b>Memory</b></h5>
Here space compexity is O(H) where H is the height of our tree. In the worst case, we expect order O(N) for a totally unbalanced tree. Expect O(logN) if working with balanced tree.