+++
title = "232. Implement Queue using Stacks"
description = ""
author = "Brendan Lichtler "
date = 2022-11-20T16:58:28-08:00
tags = ["queue", "easy", "stack", "design"]
categories = ["algorithms"]
[[images]]
  src = "img/2019/03/pic23.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++

https://leetcode.com/problems/implement-queue-using-stacks/

Implement a first in first out (FIFO) queue using only two stacks. The implemented queue should support all the functions of a normal queue (push, peek, pop, and empty).

Implement the MyQueue class:

void push(int x) Pushes element x to the back of the queue.
int pop() Removes the element from the front of the queue and returns it.
int peek() Returns the element at the front of the queue.
boolean empty() Returns true if the queue is empty, false otherwise.


<h3>Idea:</h3>


<h3>Solution:</h3>

``` 

class MyQueue {
public:
    std::stack<int> s1;
    std::stack<int> s2;

    MyQueue() {

    }
    
    void push(int x) {
        s1.push(x);
    }
    
    int pop() {
        buildQueue();

        int val = s2.top();
        s2.pop();
        return val;
    }
    
    int peek() {
        buildQueue();

        return s2.top();
    }
    
    bool empty() {
        return s1.empty() && s2.empty();
    }

private:
    void buildQueue() {
        if(s2.empty()) {
            while(!s1.empty()) {
                int t = s1.top();
                s1.pop();
                s2.push(t);
            }
        }
    }
};


```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

O(1) amortized

<h5><b>Memory</b></h5>

O(1) amortized
