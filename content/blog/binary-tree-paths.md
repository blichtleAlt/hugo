+++
title = "257. Binary Tree Paths"
description = ""
author = "Brendan Lichtler "
date = 2020-08-10T23:48:08-04:00
tags = ["tree", "recursion"]
categories = ["algorithms"]
+++

https://leetcode.com/problems/binary-tree-paths/

<h3>Problem Statement:</h3>
<hr> 

Given a binary tree, return all root-to-leaf paths.

Note: A leaf is a node with no children.


<h3>Examples</h3>
<hr>
<h4>1:</h4>

``` c++
Input:

   1
 /   \
2     3
 \
  5

Output: ["1->2->5", "1->3"]

Explanation: All root-to-leaf paths are: 1->2->5, 1->3
```

<h3>Idea:</h3>
<hr>

The most intuitive way is to use a recursion here. One is going through the tree by considering at each step the node itself and its children. If node is not a leaf, one extends the current path by a node value and calls recursively the path construction for its children. If node is a leaf, one closes the current path and adds it into the list of paths.

<h3>Solution:</h3>
<hr>

``` C++ 
class Solution {
public:
    
    void findPath(TreeNode * root, vector<string> &paths, vector<int> &path) {
        if(root == nullptr) return;
        path.push_back(root->val);
        
        if(root->left == nullptr && root->right == nullptr) {
            string res = std::to_string(path[0]);
            for(unsigned i = 1; i < path.size(); ++i) {
                res += "->" + std::to_string(path[i]);
            }
            paths.push_back(res);
        }
        findPath(root->left, paths, path);
        findPath(root->right, paths, path);
        path.pop_back();
    }
    
    
    vector<string> binaryTreePaths(TreeNode* root) {
        vector<string> paths;
        vector<int> path;
        findPath(root, paths, path);
        return paths;
    }
};
```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>
O(N). We visit each node once.

<h5><b>Memory</b></h5>
O(N) for the vector of ints reprening the current path. Could be worst case O(N) with unbalanced tree. Expect O(logN) with balanced tree.
