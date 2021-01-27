//
//  GroupAnagrams.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 04/02/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/group-anagrams/

func groupAnagrams(_ strs: [String]) -> [[String]] {
    let result:[[String]] = [[String]]()
    var index:Int = 0
    
    while index < strs.count - 1{
        if isAnagram_(strs[index], strs[index + 1]){
            
        }
        index += 1
    }
    return result
}

func isAnagram_(_ s: String, _ t: String) -> Bool {
    var isValidAnagram:Bool = false
    var sFrequencyDict = [Character:Int]()
    var tFrequencyDict = [Character:Int]()
    
    //Frequency For String s
    for c in s{
        if let val = sFrequencyDict[c]{
            sFrequencyDict[c] = val + 1
        }else{
            sFrequencyDict[c] =  1
        }
    }
    
    //Frequency For String t
    for c in t{
        if let val = tFrequencyDict[c]{
            tFrequencyDict[c] = val + 1
        }else{
            tFrequencyDict[c] =  1
        }
    }
    
    
    if sFrequencyDict == tFrequencyDict{
        isValidAnagram = true
    }
    return isValidAnagram
    
}

