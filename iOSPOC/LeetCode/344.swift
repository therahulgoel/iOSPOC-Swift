//
//  344.swift
//  iOSPOC
//
//  Created by Rahul Goel on 02/09/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/reverse-string/

final class P344{
    func reverseString(_ s: inout [Character]) {
        var index = 0
        let length = s.count
        var tmp:Character
        while  index < length/2{
            tmp = s[index]
            s[index] = s[length - index - 1]
            s[length - index - 1] = tmp
            index = index + 1
        }
    }
}
