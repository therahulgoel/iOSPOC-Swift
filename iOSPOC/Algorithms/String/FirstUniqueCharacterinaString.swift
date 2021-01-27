//
//  FirstUniqueCharacterinaString.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 09/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/first-unique-character-in-a-string/

func firstUniqChar(_ s: String) -> Int {
    var index = -1, i = 0
    var map:[Character:Int] = [Character:Int]()
    let str = Array(s)
    //To Store the count of every character in given string - O(n)
    while i < str.count{
        if let val = map[str[i]]{
            map[str[i]] = val + 1
        }else{
            map[str[i]] = 1
        }
        i += 1
    }
    //Reiterate given string to check the first occurance - O(n)
    i = 0
    while i < str.count{
        if let value = map[str[i]], value == 1 {
            index = i
            break
        }
        i += 1
    }
    return index
}
