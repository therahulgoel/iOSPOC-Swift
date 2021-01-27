//
//  IntersectionofTwoArrays.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 26/03/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/intersection-of-two-arrays/
/**
 Naive Solution Time : O(m*n) in worst case
 Using Sets : O(m + n ) in average case and O(n×m) in the worst case when load factor is high enough.
 */
func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    let set1 = Set(nums1)
    let set2 = Set(nums2)
    return  Array(set1.intersection(set2))
}

