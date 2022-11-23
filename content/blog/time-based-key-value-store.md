+++
title = "981. Time Based Key-Value Store"
description = ""
author = "Brendan Lichtler "
date = 2022-11-22T19:50:39-08:00
tags = ["hash table", "medium", "binary search"]
categories = ["design"]
[[images]]
  src = "img/2019/03/pic26.jpg"
  alt = "Desert Scene"
  stretch = "stretchH"
+++

https://leetcode.com/problems/time-based-key-value-store/

Design a time-based key-value data structure that can store multiple values for the same key at different time stamps and retrieve the key's value at a certain timestamp.

Implement the TimeMap class:

TimeMap() Initializes the object of the data structure.
void set(String key, String value, int timestamp) Stores the key key with the value value at the given time timestamp.
String get(String key, int timestamp) Returns a value such that set was called previously, with timestamp_prev <= timestamp. If there are multiple such values, it returns the value associated with the largest timestamp_prev. If there are no values, it returns "".

<h3>Idea:</h3>


<h3>Solution:</h3>


```

class TimeMap {
public:
    unordered_map<string, map<int, string>> s;

    TimeMap() {

    }
    
    void set(string key, string value, int timestamp) {
        s[key][timestamp] = value;
    }
    
    string get(string key, int timestamp) {
        auto it = s[key].upper_bound(timestamp);

        if (it == s[key].begin()) {
            return "";
        } 
        return (--it)->second;
    }
};

```

<h3>Complexity Analysis:</h3>
<hr>

<h5><b>Time</b></h5>

Set is O(1) constant time. O(N) worst case if the map resizes, amortized O(1)

Get is O(log(N)) for upper bound on map using binary search

<h5><b>Memory</b></h5>

O( N * T ) where N is number of keys and T is max number of timestamps for a key
