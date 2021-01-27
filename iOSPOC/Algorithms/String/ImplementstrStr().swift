//
//  ImplementstrStr().swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 25/02/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/implement-strstr/

//Naive Solution : Time O(mn)
func strStr(_ haystack: String, _ needle: String) -> Int {
    //Naive Solution
    var i:Int = 0, j:Int = 0
    var position:Int = -1
    let haystackChars:[Character] = Array(haystack)
    let needleChars:[Character] = Array(needle)
    let haystackCharsCount:Int = haystackChars.count
    let needleCharsCount:Int = needleChars.count

    if needle.isEmpty{
        position = 0
    }

    while i <= haystackCharsCount - needleCharsCount{
        j = 0
        while j < needleCharsCount{
            if haystackChars[j + i] != needleChars[j]{ //Mismatch
                break
            }
            j += 1
        }
        if j == needle.count{
            position = i
            break
        }
        i += 1
    }
    return position
}

//KMP :String Matching Algorithms
func strStr_(_ haystack: String, _ needle: String) -> Int {
    var pos:Int = -1
    
    return pos
}




