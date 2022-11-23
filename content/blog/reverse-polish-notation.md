+++
title = "150. Evaluate Reverse Polish Notation"
description = ""
author = "Brendan Lichtler "
date = 2022-11-21T20:06:39-08:00
tags = ["stack", "medium"]
categories = ["algorithms"]
[[images]]
  src = "img/2019/03/pic24.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++

https://leetcode.com/problems/evaluate-reverse-polish-notation/

Evaluate the value of an arithmetic expression in Reverse Polish Notation.

Valid operators are +, -, *, and /. Each operand may be an integer or another expression.

Note that division between two integers should truncate toward zero.

It is guaranteed that the given RPN expression is always valid. That means the expression would always evaluate to a result, and there will not be any division by zero operation.

<h3>Idea:</h3>


<h3>Solution:</h3>

``` 

class Solution {
public:
    int evalRPN(vector<string>& tokens) {
        stack<long> s;
        for (auto &token: tokens) {
            if (isOperator(token)) {
                long a = s.top();
                s.pop();
                long b = s.top();
                s.pop();
                s.push(compute(a, b, token[0]));
            } else {
                s.push(stol(token));
            }
        }
        return s.top();
    }

    long compute(long a, long b, char op) {
        switch(op) {
            case '+':
                return b + a;
            case '-': 
                return b - a;
            case '*':
                return b * a;
            default:
                return b / a;
        }
    }

    bool isOperator(string &c) {
        return (c[0] == '+' || c[0] == '-' || c[0] == '*' || c[0] == '/') && (!isdigit(c[c.size() - 1]));
    }
};


```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

O(N)

<h5><b>Memory</b></h5>

O(N)
