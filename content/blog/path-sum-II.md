+++
title = "113. Path Sum II"
description = ""
author = "Brendan Lichtler "
date = 2020-08-10T00:55:08-04:00
tags = ["tree", "recursion", "medium"]
categories = ["algorithms"]
[[images]]
  src = "img/2019/03/pic07.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++


https://leetcode.com/problems/path-sum-ii/


<h3>Problem Statement:</h3>
<hr>
Given a binary tree and a sum, find all root-to-leaf paths where each path's sum equals the given sum.

Note: A leaf is a node with no children.

<h3>Example:</h3>
<hr>
Given the below binary tree and sum = 22,

``` python
      5
     / \
    4   8
   /   / \
  11  13  4
 /  \    / \
7    2  5   1
```

Return: 

```python
[
   [5,4,11,2],
   [5,8,4,5]
]
```

<h3>Idea:</h3>
<hr>
We can solve this using a recursive depth first search approach. First we set up a helper function that will help us recursively store the path and add it if a matching sum is found. 

As base cases, our recursive function will return if the node is null, or a leaf node matching the sum has been found.

Otherwise, the function is called recursively on the left and right subtrees. 

At the end, the results list with all such paths is returned.

<h3>Solution:</h3>
<hr>

``` C++
    class Solution {
    public:
        vector<vector<int>> pathSum(TreeNode* root, int sum) {
            vector<vector<int> > paths;
            vector<int> path;
            findPaths(root, sum, path, paths);
            return paths;  
        }
    private:
        void findPaths(TreeNode* node, int sum, vector<int>& path, vector<vector<int> >& paths) {
            if (!node) return;
            path.push_back(node -> val);
            if (!(node -> left) && !(node -> right) && sum == node -> val)
                paths.push_back(path);
            findPaths(node -> left, sum - node -> val, path, paths);
            findPaths(node -> right, sum - node -> val, path, paths);
            path.pop_back();
        }
    };
```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>
O(N^2) where N is the number of nodes in a tree. In the worst case, we could have a complete binary tree and if that is the case, then there would be N/2 leafs. For every leaf, we perform a potential O(N) operation of copying over the pathNodes nodes to a new list to be added to the final pathsList. Hence, the complexity in the worst case could be O(N^2).

<h5><b>Memory</b></h5>
 O(N). From Leetcode discussion - The space complexity, like many other problems is debatable here. I personally choose not to consider the space occupied by the output in the space complexity. So, all the new lists that we create for the paths are actually a part of the output and hence, don't count towards the final space complexity. The only additional space that we use is the pathNodes list to keep track of nodes along a branch.

We could include the space occupied by the new lists (and hence the output) in the space complexity and in that case the space would be O(N^2) There's a great answer on Stack Overflow about whether to consider input and output space in the space complexity or not. I prefer not to include them.