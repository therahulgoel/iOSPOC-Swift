//
//  MergeSortedArray.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 06/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/merge-sorted-array/
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var result:[Int] = [Int]()
    var i = 0 //First Array Index
    var j = 0 //Second Array Index
    while i < m && j < n  {
        //In case both the elements are same
        if nums1[i] == nums2[j]{
            result.append(nums1[i])
            result.append(nums2[j])
            i = i + 1
            j = j + 1
            continue
        }
        //In case both elements are different
        if nums1[i] < nums2[j]{  //In case left
            result.append(nums1[i])
            i = i + 1
        }else{
            result.append(nums2[j])
            j = j + 1
        }
    }
    //Check Which array is completely Processed, Copy all the remaining items if any from other array into result array
    while i < m{
        result.append(nums1[i])
        i = i + 1
    }
    while j < n{
        result.append(nums2[j])
        j = j + 1
    }
    nums1 = result
}

