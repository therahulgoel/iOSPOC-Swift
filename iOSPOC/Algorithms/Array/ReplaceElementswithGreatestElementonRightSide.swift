//
//  ReplaceElementswithGreatestElementonRightSide.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 26/03/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/

func replaceElements(_ arr: [Int]) -> [Int] {
    var index = arr.count - 1
    var output:[Int] = Array(repeating: -1, count: arr.count)
    var max = -1
    while index > 0 {
        if max < arr[index]{
            max = arr[index]
        }
        output[index - 1] = max
        index -= 1
    }
    return output
}

