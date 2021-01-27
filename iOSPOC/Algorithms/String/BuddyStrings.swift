//
//  BuddyStrings.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 14/03/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/buddy-strings/

func buddyStrings(_ A: String, _ B: String) -> Bool {
    //If Both strings are not same size
    if A.count != B.count || A.isEmpty || B.isEmpty{
        return false
    }
    var AArr = Array(A), BArr = Array(B)
    if AArr == BArr{
        //Check if string cantain any repeated character
        return checkIfAnyCharRepeated(AArr)
    }
    //To Store count of mismathched characters
    var count = 0
    var index = 0
    var first = 0, second = 0
    while index < A.count {
       if AArr[index] != BArr[index]{
           if count == 0{
               first = index
           }else{
               second = index
           }
           count += 1
       }
       index += 1
    }
    if count > 2{
        return false
    }
    let tmp = AArr[first]
    AArr[first] = AArr[second]
    AArr[second] = tmp
    if AArr == BArr{
        return true
    }
    return false
}

func checkIfAnyCharRepeated(_ AArr:[Character])->Bool{
    var i = 0
     var map:[Character:Int] = [Character:Int]()
     while i < AArr.count {
         if let _ = map[AArr[i]]{
             return true
         }else{
             map[AArr[i]] = 0
         }
         i += 1
     }
     return false
}
