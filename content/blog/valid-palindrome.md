+++
title = "125. Valid Palindrome"
description = ""
author = "Brendan Lichtler "
date = 2022-11-20T15:28:07-08:00
tags = ["string", "easy", "two pointers"]
categories = ["algorithms"]
[[images]]
  src = "img/2019/03/pic20.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++

https://leetcode.com/problems/valid-palindrome/

A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.

<h3>Idea:</h3>

Two pointers


<h3>Solution:</h3>

``` 

class Solution {
public:
    bool isPalindrome(string &s) {
        for (int i = 0, j = s.size() - 1; i < j; ++i, --j) {            
            nextLetter(s, i, j);

            if (tolower(s[i]) != tolower(s[j])) {
                return false;
            }
        }

        return true;
    }

    void nextLetter(const string &s, int &i, int &j) {
        while (i < j && !isalnum(s[i])) {
            i++;
        }
        while(i < j && !isalnum(s[j])) {
            j--;
        }
        
    }
};


```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

O(N) one pass over the string



<h5><b>Memory</b></h5>

O(1) constant memory for loop variables

