+++
title = "55. Jump Game"
date = 2020-12-23T04:05:17-05:00
tags = ["array", "greedy", "medium", "dynamic programming"]
categories = ["algorithms"]
author = "Brendan Lichtler"
[[images]]
  src = "img/2019/03/pic12.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++

https://leetcode.com/problems/jump-game/

<h3>Problem Statement:</h3>
<hr> 

Given an array of non-negative integers nums, you are initially positioned at the first index of the array.
Each element in the array represents your maximum jump length at that position.
Determine if you are able to reach the last index.


<h3>Examples</h3>
<hr>

<h5><b>Example 1</b></h5>
Input: nums = [2,3,1,1,4]
Output: true
Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.


<h5><b>Example 2</b></h5>
Input: nums = [3,2,1,0,4]
Output: false
Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.



<h3>Idea:</h3>
<hr>

Here we can keep track of the left most index. If the current element can get at least to the left most index, it becomes the left most index.
Therefore if we go right to left, if at the end the left most index is 0, we know we can jump to the end. 

Greedily update the left most index.

<h3>Solution:</h3>
<hr>

``` C++ 

class Solution {
public:
    bool canJump(vector<int>& nums) {
        int leftMostIndex = nums.size() - 1;

        for(int i = nums.size() - 1; i >= 0; --i) {
            // if we can at least reach the left most index, make i the left most index.
            if(i + nums[i] >= leftMostIndex) {
                leftMostIndex = i;
            }
        }
        
        // if left most index ends at zero, we can jump to the end.
        return leftMostIndex == 0;
    }
};


```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

O(N) time. It is a one time linear pass over the input array.

<h5><b>Memory</b></h5>

O(1) memory. 


<h3>Side Note: Original DP Implementation I went with</h3>
<hr>

``` c++

class Solution {
public:
    bool canJump(vector<int>& nums) {
        if(nums.empty()) {
            return false;
        }
        
        vector<int> dp;
        dp.resize(nums.size(), 0);
        dp[nums.size() - 1] = 1;
        
        
        // start at the second to last, we can always reach the last element
        for(int i = nums.size() - 2; i >= 0; --i) {
            
            int num_to_check = nums[i];
            int cur_offset = 1;
            
            while( ((cur_offset + i) < nums.size()) && (num_to_check > 0) ) {
                if(dp[i + cur_offset] == 1) {
                    dp[i] = 1;
                    break;
                }
                cur_offset += 1;
                num_to_check -= 1;
            }
        }
        
        
        return dp[0];
    }
};

```

<h5><b>Time</b></h5>

O(N^2) time. 

<h5><b>Memory</b></h5>

O(N) memory. 



