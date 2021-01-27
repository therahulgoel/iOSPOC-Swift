//
//  ValidPalindrome.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 08/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/valid-palindrome/
func isPalindrome(_ s: String) -> Bool {
    let str:[Character] = Array(s)
    var start:Int = 0
    var end:Int = s.count - 1
    var isPalindrome:Bool = true
    
    while start < end {
        let isStartNotAlphaNumeric = !CharacterSet.alphanumerics.contains(str[start].unicodeScalars.first!)
        let isEndNotAlphaNumeric = !CharacterSet.alphanumerics.contains(str[end].unicodeScalars.first!)

        if isStartNotAlphaNumeric || isEndNotAlphaNumeric{
            if isStartNotAlphaNumeric {
                start = start + 1
            }
            if isEndNotAlphaNumeric {
                end = end - 1
            }
            continue
        }
        if str[start].lowercased() != str[end].lowercased(){
             isPalindrome = false
             break
         }
        start = start + 1
        end = end - 1

    }
    return isPalindrome
}
