+++
title = "141. Linked List Cycle"
description = ""
author = "Brendan Lichtler "
date = 2022-11-20T16:26:56-08:00
tags = ["two pointers", "easy", "hash table"]
categories = ["algorithms"]
[[images]]
  src = "img/2019/03/pic22.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++

https://leetcode.com/problems/linked-list-cycle/

Given head, the head of a linked list, determine if the linked list has a cycle in it.

There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail's next pointer is connected to. Note that pos is not passed as a parameter.

Return true if there is a cycle in the linked list. Otherwise, return false.


<h3>Idea:</h3>

Slow and fast pointer. One pointer moves 2 forward and other moves 1 forward. If there is a cycle, eventually they will colide. Otherwise, fast will reach the end of the list.

<h3>Solution:</h3>

``` 

class Solution {
public:
    bool hasCycle(ListNode *head) {
        if (!head) {
            return false;
        }

        ListNode *slow = head, *fast = head->next;

        while(fast != nullptr && fast->next) {
            if (slow == fast) {
                return true;
            }
            slow = slow->next;
            fast = fast->next->next;
        }

        return false;
    }
};

```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

O(N) where N is the number of nodes in the linked list

<h5><b>Memory</b></h5>

O(1) two pointers
