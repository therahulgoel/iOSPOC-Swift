//
//  RepeatedSubstringPattern.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 25/02/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/repeated-substring-pattern/

func repeatedSubstringPattern(_ s: String) -> Bool {
    var status:Bool = false
    let strLength = s.count
    if strLength <= 1{
        return true
    }
    
    var length:Int = 1
    while length <= strLength{
        let times = strLength/length
        
        //Append sub string of length 'length' , 'times' times and compare with given string
        var tmpSubstring = ""
        var index:Int = 0
        while index < times{
            tmpSubstring = "\(tmpSubstring)" + "\(s.prefix(length))"
            index += 1
        }
        if tmpSubstring == s{
            status = true
            break
        }
        length += 1
    }
    
    return status
}
