//
//  ReverseOnlyLetters.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 22/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/reverse-only-letters/

func reverseOnlyLetters(_ S: String) -> String {
    var str = Array(S)
    let strLength = str.count
    var i = 0, j = strLength - 1
    
    while i < j{
        let asciiFirst = str[i].unicodeScalars.first?.value ?? 0
        let asciiLast = str[j].unicodeScalars.first?.value ?? 0
        let isFirstAlbhabet = ((65...90).contains(asciiFirst) || (97...122).contains(asciiFirst))
        let isLastAlbhabet = ((65...90).contains(asciiLast) || (97...122).contains(asciiLast))

        if  isFirstAlbhabet && isLastAlbhabet {
            //Swap
            let tmp = str[i]
            str[i] = str[j]
            str[j] = tmp
            i += 1
            j -= 1
        }else if isFirstAlbhabet{
            j -= 1
        }else{
            i += 1
        }
    }
    return String(str)
}

