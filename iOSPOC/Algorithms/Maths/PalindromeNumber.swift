//
//  PalindromeNumber.swift
//  iOSPOC
//
//  Created by Rahul Goel on 26/02/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/palindrome-number/

func isPalindrome(_ x: Int) -> Bool {
    var isPalindrome = true, i = 0
    //Get the String out of given number
    let str = Array(String(x)), length = str.count
    while i < length/2{
        if str[i] != str[length - i - 1]{
            isPalindrome = false
            break
        }
        i += 1
    }
    return isPalindrome
}
