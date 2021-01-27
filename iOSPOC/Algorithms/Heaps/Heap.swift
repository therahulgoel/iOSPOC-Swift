//
//  Heap.swift
//  iOSPOC
//
//  Created by Rahul Goel on 14/06/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

    /*
     It is Almost Complete Binary Tree All levels are completely filled except possibly the last level and the last level has all keys as left as possible. This property of Binary Heap makes them suitable to be stored in an array.
     A Binary Heap is Either :
        1. Min Heap
        2. Max Heap
     
     In a Min Binary Heap, the key at root must be minimum among all keys present in Binary Heap.
     The same property must be recursively true for all nodes in Binary Tree.
     
     The root element will be at Arr[0].
     Below table shows indexes of other nodes for the ith node, i.e., Arr[i]:
     Arr[(i-1)/2]    Returns the parent node
     Arr[(2*i)+1]    Returns the left child node
     Arr[(2*i)+2]    Returns the right child node
     
     The traversal method use to achieve Array representation is Level Order of given Complete Binary Tree.
     
     Applications :
        1. Heap Sort
        2. Graph Algorithms : Prims for Min Spanning Tree, Dijkstra Single Source Shortest Path.
        3. Kth Largest element in an array
        4. Sort almost sorted array
        5. Merge k sorted arrays
     
     Operations on Min Heap:
     1) getMini(): It returns the root element of Min Heap. Time Complexity of this operation is O(1).
     
     2) extractMin(): Removes the minimum element from MinHeap. Time Complexity of this Operation is O(Logn) as this operation needs to maintain the heap property (by calling heapify()) after removing root.
     
     3) decreaseKey(): For Min Heap, Decreases value of key. The time complexity of this operation is O(Logn). If the decreases key value of a node is greater than the parent of the node, then we don’t need to do anything. Otherwise, we need to traverse up to fix the violated heap property.
     
     4) insert(): Inserting a new key takes O(Logn) time. We add a new key at the end of the tree. IF new key is greater than its parent, then we don’t need to do anything. Otherwise, we need to traverse up to fix the violated heap property.
     
     5) delete(): Deleting a key also takes O(Logn) time. We replace the key to be deleted with minum infinite by calling decreaseKey(). After decreaseKey(), the minus infinite value must reach root, so we call extractMin() to remove the key.
 
 
    Asc Order Sorting : Max Heap
    Desc Order Sorting : Min Heap
     */

//https://leetcode.com/problems/sort-an-array/

//Time : nLogn
class BinaryHeap {
    var lastPos = -1
    
    func sortArray(_ nums: [Int]) -> [Int] {
        var arr = nums
        lastPos  = nums.count - 1
        //Create Heap out of it
        buildHeap(&arr)
        //Extract max n times
        for _ in 0..<nums.count{
            _ = extractMax(&arr)
        }
        return arr
    }
    
    //TIme : O(n)
    func buildHeap(_ arr: inout [Int]){
        //Start from the end of given array - Because all leaf nodes are alrady heapified
        let n = arr.count
        var i = n/2 - 1
        print(i)
        while i >= 0{
            topDownHeapify(&arr, i) //TO apply on every fuckin index
            i -= 1
        }
    }
    
    func topDownHeapify(_ arr:inout [Int], _ i:Int){
        let root = i
        let left = 2*i + 1
        let right = 2*i + 2
        var max = root
        let size = lastPos + 1
        
        if left < size && arr[max] < arr[left]   {
            max = left
        }
        if right < size && arr[max] < arr[right] {
            max = right
        }
        if max != root{
            arr.swapAt(max, root)
            topDownHeapify(&arr, max)
        }
    }
    
    func extractMax(_ arr: inout [Int])->Int{
        let max = arr[0]
        //Swap the last element to the root
        arr.swapAt(0, lastPos)
        lastPos -= 1
        topDownHeapify(&arr, 0) //Root needs to heapified
        return max
    }
}

