//
//  ConvertSortedArraytoBinarySearchTree.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 02/06/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/

func sortedArrayToBST(_ nums: [Int]) -> btNode? {
    if nums.isEmpty{
        return nil
    }
    return sortedArrayToBSTHelper(nums, 0, nums.count - 1)
}

func sortedArrayToBSTHelper(_ nums: [Int], _ left:Int, _ right:Int) ->btNode? {
    if left > right{
        return nil
    }else{
        let mid = (left + right) / 2
        let root = btNode(value: nums[mid], pr: nil, nx: nil)
        root.val = nums[mid]
        root.prev = sortedArrayToBSTHelper(nums, left, mid - 1)
        root.next = sortedArrayToBSTHelper(nums, mid + 1, right)
        return root
    }
}

