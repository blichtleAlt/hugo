+++
title = "1. Two Sum"
description = ""
author = "Brendan Lichtler "
date = 2022-11-20T10:33:33-08:00
tags = ["hash table", "array", "easy"]
categories = ["algorithms", "data structures"]
[[images]]
  src = "img/2019/03/pic16.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++

https://leetcode.com/problems/two-sum/

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

<h3>Idea:</h3>

Here we construct a lookup map where the key is the number and the value is the index. 

Then for search, we compute the corresponding number using (b = target - a). 

If this result is present in lookup, we can return the current index and index in lookup map.
<h3>Solution:</h3>

``` 
class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        unordered_map<int, int> valueToIndex;
        vector<int> res;

        for (int i = 0; i < nums.size(); ++i) {
            valueToIndex[nums[i]] = i;
        }

        for(int i = 0; i < nums.size(); ++i) {
            auto match = valueToIndex.find((target - nums[i]));

            if (match != valueToIndex.end() && i != match->second) {
                res = {i, match->second};
                break;
            }
        }
        return res;
    }
};

```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

Creating the lookup map is an O(N) operation.

Searching the pair that sums to target is worst case an O(N) operation.

O(N) + O(N) = 0(N)

<h5><b>Memory</b></h5>

Lookup map is O(N)

Result vector is constant space

O(N) + c = O(N)