//
//  SlidingWindowMaximum.swift
//  iOSPOC
//
//  Created by Rahul Goel on 16/09/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/sliding-window-maximum/

func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    var result = [Int](), i = 0
    let total = nums.count
    var subArray = Array(nums[0...(k - 1)])

    while i < total - k + 1 {
        buildHeap(&subArray)
        result.append(subArray[0])
        i += 1
    }
    return result
}

func buildHeap(_ arr: inout [Int]){
    var i = arr.count/2 - 1
    while i >= 0 {
        topDownHeapify(&arr, i)
        i -= 1
    }
}

func topDownHeapify(_ arr: inout [Int], _ i:Int){
    let root = i
    let left = 2*i + 1
    let right = 2*i + 2
    let size = arr.count
    var max = root
    if left < size && arr[left] > arr[max]{
        max = left
    }
    if right < size && arr[right] > arr[max]{
        max = right
    }
    if root != max{
        arr.swapAt(max, root)
        topDownHeapify(&arr, max)
    }
}

func extractMax(_ arr:inout [Int])->Int{
    let max = arr[0]
    arr.swapAt(0, arr.count - 1)
    topDownHeapify(&arr, 0)
    return max
}
