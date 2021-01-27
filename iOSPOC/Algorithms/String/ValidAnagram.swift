//
//  ValidAnagram.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 04/02/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/valid-anagram/
func isAnagram(_ s: String, _ t: String) -> Bool {
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
