//
//  LRUCache.swift
//  iOSPOC
//
//  Created by Rahul Goel on 22/11/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

/*
LeetCode Problem : https://leetcode.com/problems/lru-cache/
Design and implement a data structure for Least Recently Used (LRU) cache. It should support the following operations: get and put.

get(key) - Get the value (will always be positive) of the key if the key exists in the cache, otherwise return -1.
put(key, value) - Set or insert the value if the key is not already present. When the cache reached its capacity,
it should invalidate the least recently used item before inserting a new item.

The cache is initialized with a positive capacity.

Follow up:
Could you do both operations in O(1) time complexity?
*/
   //Double Linked List Node
    class dlNode{
        var prev:dlNode?
        var next:dlNode?
        var val:Int = 0
        var key:Int = 0
        
        init(key:Int , _ val:Int, _ prev:dlNode?, _ next:dlNode?){
            self.key = key
            self.val = val
            self.prev = prev
            self.next = next
        }
    }

    /*
        root.next - Most Recently Used Node
        tail.previous - Least Recently Used Node
    */
    class LRUCache {
        
        var capacity:Int = 0
        //Dictionary To Store Reference of all the Items respective to the key
        var map:[Int:dlNode] = [Int:dlNode]()
        
        //Links to the Double Linked List
        //root and tail nodes works as just two ends of DLL all the data will be contained between them
        //Most Recently item is always at root.next
        
        var root:dlNode = dlNode(key:Int.min, Int.min, nil, nil)
        var tail:dlNode = dlNode(key:Int.max, Int.max, nil, nil)
        
        init(_ capacity: Int) {
            self.capacity = capacity
            root.next = tail
            tail.prev = root
        }
        
     }


extension LRUCache{
    func get(_ key: Int) -> Int {
        if let node = map[key]{
            remove(node)
            //Add Node to the starting of list
            add(node)
            return node.val
        }
        return -1
    }
    
    func put(_ key: Int, _ value: Int) {
        if let node = map[key]{ //If Found in cache
            remove(node)
            map.removeValue(forKey: key)
        }else if capacity <= map.keys.count{ //If cache FUll
            if let lNode = tail.prev{
                remove(lNode)
                map.removeValue(forKey: lNode.key)
            }
        }
        
        //Add New Node in Cache
        let newNode = dlNode(key: key, value, nil, nil)
        map[key] = newNode
        add(newNode)
    }
}

extension LRUCache{
    //To add given node in start of the DLL
    func add(_ node: dlNode){
        let next = root.next
        root.next = node
        node.prev = root
        node.next = next
        next?.prev = node
    }
    
    //To remove given node from DLL
    func remove(_ node: dlNode){
        let previous = node.prev
        let next = node.next
        
        previous?.next = next
        next?.prev = previous
    }
}

