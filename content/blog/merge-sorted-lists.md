+++
title = "21. Merge Two Sorted Lists"
description = ""
author = "Brendan Lichtler "
date = 2022-11-20T12:22:11-08:00
tags = ["linked list", "easy"]
categories = ["algorithms"]
[[images]]
  src = "img/2019/03/pic19.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++

https://leetcode.com/problems/merge-two-sorted-lists/

You are given the heads of two sorted linked lists list1 and list2.

Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.

Return the head of the merged linked list.

<h3>Idea:</h3>

Merge two lists into a single list

<h3>Solution:</h3>

``` 

class Solution {
public:
    ListNode* mergeTwoLists(ListNode* list1, ListNode* list2) {
        ListNode* head = nullptr, *tail = nullptr;
        int val;

        while(list1 && list2) {
            if (list1->val < list2->val) {
                val = list1->val;
                list1 = list1->next;
            } else {
                val = list2->val;
                list2 = list2->next;
            }
            insertNode(head, tail, val);
        }
        
        while (list1) {
            insertNode(head, tail, list1->val);
            list1 = list1->next;
        }

        while (list2) {
            insertNode(head, tail, list2->val);
            list2 = list2->next;
        }

        return head;
    }

    void insertNode(ListNode * &head, ListNode * &tail, const int val) {
        ListNode* insert = new ListNode(val);

        if (head == nullptr) {
            head = tail = insert;
        } else {
            tail->next = insert;
            tail = tail->next;
        }
    }
};

```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

O(N + M) where N is size of list 1 and M is size of list2

<h5><b>Memory</b></h5>

O(N + M) where N is size of list 1 and M is size of list2
