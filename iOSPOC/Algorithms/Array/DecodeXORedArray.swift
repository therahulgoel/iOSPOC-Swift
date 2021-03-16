//
//  DecodeXORedArray.swift
//  iOSPOC
//
//  Created by Rahul Goel on 24/02/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/decode-xored-array/

func decode(_ encoded: [Int], _ first: Int) -> [Int] {
    var decodecArr = Array(repeating: 0, count: encoded.count + 1)
    decodecArr[0] = first
    var i = 0
    while i < encoded.count {
        //As XOR of three numbers out of which two are same would result in different numbr
        decodecArr[i + 1] = encoded[i]^decodecArr[i]
        i += 1
    }
    return decodecArr
}
