//
//  DesignHashSet.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 23/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/design-hashset/

class MyHashSet {

    private var hashTable:[Int] = Array(repeating: Int.min, count: 1000000)

    init() {
    }
    
    func add(_ key: Int) {
        hashTable[key] = key
    }
    
    func remove(_ key: Int) {
        hashTable[key] = Int.min
    }
    
    func contains(_ key: Int) -> Bool {
       return  !(hashTable[key] == Int.min)
    }
}

