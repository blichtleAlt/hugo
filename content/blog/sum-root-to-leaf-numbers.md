+++
title = "129. Sum Root to Leaf Numbers"
description = ""
author = "Brendan Lichtler "
date = 2020-08-10T23:55:08-04:00
tags = ["tree", "recursion", "medium"]
categories = ["algorithms"]
[[images]]
  src = "img/2019/03/pic06.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++

https://leetcode.com/problems/sum-root-to-leaf-numbers/

<h3>Problem Statement:</h3>
<hr> 

Given a binary tree containing digits from 0-9 only, each root-to-leaf path could represent a number.

An example is the root-to-leaf path 1->2->3 which represents the number 123.

Find the total sum of all root-to-leaf numbers.

Note: A leaf is a node with no children.


<h3>Examples</h3>
<hr>
<h4>1:</h4>

```c++
Input: [1,2,3]
    1
   / \
  2   3
Output: 25
Explanation:
The root-to-leaf path 1->2 represents the number 12.
The root-to-leaf path 1->3 represents the number 13.
Therefore, sum = 12 + 13 = 25.
```

<h4>2:</h4>

```c++
Input: [4,9,0,5,1]
    4
   / \
  9   0
 / \
5   1
Output: 1026
Explanation:
The root-to-leaf path 4->9->5 represents the number 495.
The root-to-leaf path 4->9->1 represents the number 491.
The root-to-leaf path 4->0 represents the number 40.
Therefore, sum = 495 + 491 + 40 = 1026.
```


<h3>Idea:</h3>
<hr>

The idea is traverse our tree, using any tree traversal algorighm. I choose dfs, and also I directly change the values of our tree.

1. If we reach non-existing node (None), we just return back.
2. If we reached leaf, that is it do not have any children, return value of this node.
3. Update values for left and right children if they exist.
4. Finally, call function recursively for left and right children and return sum of results for left and right.

<h3>Solution:</h3>
<hr>

``` C++ 
class Solution {
public:
    
    void findPath(TreeNode* root, string &path, int &total) {
        if(root == nullptr) return;
        path += std::to_string(root->val);
        
        if(root->left == nullptr && root->right == nullptr) {
            total += stoi(path);
        }
        findPath(root->left, path, total);
        findPath(root->right, path, total);
        
        path.pop_back();
    }
    
    int sumNumbers(TreeNode* root) {
        string path;
        int total = 0;
        findPath(root, path, total);
        
        return total;
    }
};
```

TODO: Look at Morris Preorder Traversal.


<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>
O(N). We look at each node once.

<h5><b>Memory</b></h5>
Here it is O(H) where H is the height of the binary tree. This will be where most recursive calls are made/where path string will be largest.
