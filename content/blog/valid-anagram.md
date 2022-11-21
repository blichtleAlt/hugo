+++
title = "242. Valid Anagram"
description = ""
author = "Brendan Lichtler "
date = 2022-11-20T15:53:28-08:00
tags = ["string", "easy", "hash table"]
categories = ["algorithms"]
[[images]]
  src = "img/2019/03/pic21.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++

https://leetcode.com/problems/valid-anagram/

Given two strings s and t, return true if t is an anagram of s, and false otherwise.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

## Example 1:

```
Input: s = "anagram", t = "nagaram"
Output: true

```

## Example 2:

```
Input: s = "rat", t = "car"
Output: false
```
 

## Constraints:

```
1 <= s.length, t.length <= 5 * 104
s and t consist of lowercase English letters.
```

<h3>Idea:</h3>

Frequency counter 

<h3>Solution:</h3>

``` 

class Solution {
public:
    static const int NUM_LETTERS = 26;

    bool isAnagram(string s, string t) {
        int arr[NUM_LETTERS] = {0};

        if (s.size() != t.size()) {
            return false;
        }

        for(int i = 0; i < s.size(); ++i) {
            arr[s[i] - 'a']++;
            arr[t[i] - 'a']--;
        }

        for(int i = 0; i < NUM_LETTERS; ++i) {
            if(arr[i] != 0) {
                return false;
            }
        }

        return true;
    }
};

```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

O(N + M) + constant time 



<h5><b>Memory</b></h5>

O(1) array fixed to 26 
