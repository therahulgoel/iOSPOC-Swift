//
//  DesignHashMap.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 22/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/design-hashmap/

class MyHashMap {
    private var hashTable:[Int] = Array(repeating: -1, count: 1000000)
    
    init() {
    }
    //value to be always non negative
    func put(_ key: Int, _ value: Int) {
        hashTable[key] = value
    }
    
    func get(_ key: Int) -> Int {
        return hashTable[key]
    }
    
    func remove(_ key: Int) {
        hashTable[key] = -1
    }
}
