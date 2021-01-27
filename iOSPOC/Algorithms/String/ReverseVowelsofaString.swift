//
//  ReverseVowelsofaString.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 14/03/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/reverse-vowels-of-a-string/
func reverseVowels(_ s: String) -> String {
    var S = Array(s)
    let SLength = S.count
    var left = 0, right = SLength - 1
    let vowels = Set("aeiouAEIOU")
    
    while left < right {
         if !vowels.contains(S[left]){
            left += 1
        }
        if !vowels.contains(S[right]){
            right -= 1
        }
        if vowels.contains(S[left]) && vowels.contains(S[right]){
            //Swap
            let tmp = S[left]
            S[left] = S[right]
            S[right] = tmp
            left += 1
            right -= 1
        }
    }
    return String(S)
}
