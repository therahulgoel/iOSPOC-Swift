//
//  Swift_SortingUtilityTests.swift
//  iOSPOC
//
//  Created by Rahul Goel on 05/02/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

public final class SortingUtilityTests{
    
}

extension SortingUtilityTests {
    public final class func bubbleSort_Tests(){
        print("---- Bubble Sort Tests ----")
        print(SortingUtility.bubbleSort(arr: [2,3,1,89,45]))
        print(SortingUtility.bubbleSort(arr: [5,3,0,-1,-1,45,67]))
        print(SortingUtility.bubbleSort(arr: [1,0,4]))
        print(SortingUtility.bubbleSort(arr: [0,0,0,0]))
        print(SortingUtility.bubbleSort(arr: [11,0]))
        print(SortingUtility.bubbleSort(arr: [11]))
        print("---- Bubble Sort Tests ----")
    }
    
    public final class func selectionSort_Tests(){
        print("---- Selection Sort Tests ----")
        print(SortingUtility.selectionSort(arr:[2,3,1,89,45]))
        print(SortingUtility.selectionSort(arr: [5,3,0,-1,-1,45,67]))
        print(SortingUtility.selectionSort(arr: [1,0,4]))
        print(SortingUtility.selectionSort(arr: [0,0,0,0]))
        print(SortingUtility.selectionSort(arr: [11,0]))
        print(SortingUtility.selectionSort(arr: [11]))
        print("---- Selection Sort Tests ----")
    }
    
    public final class func insertionSort_Tests(){
        print("---- Insertion Sort Tests ----")
        print(SortingUtility.insertionSort(arr:[2,3,1,89,45]))
        print(SortingUtility.insertionSort(arr: [5,3,0,-1,-1,45,67]))
        print(SortingUtility.insertionSort(arr: [1,0,4]))
        print(SortingUtility.insertionSort(arr: [0,0,0,0]))
        print(SortingUtility.insertionSort(arr: [11,0]))
        print(SortingUtility.insertionSort(arr: [11]))
        print(SortingUtility.insertionSort(arr: [1,2,3,4,5,6]))
        print("---- Insertion Sort Tests ----")
    }
    
    public final class func countingSort_Tests(){
        print("---- Counting Sort Tests ----")
        print(SortingUtility.countingSort(arr:[2,3,1,89,45]))
        print(SortingUtility.countingSort(arr: [5,3,0,-1,-1,45,67]))
        print(SortingUtility.countingSort(arr: [1,0,4]))
        print(SortingUtility.countingSort(arr: [0,0,0,0]))
        print(SortingUtility.countingSort(arr: [11,0]))
        print(SortingUtility.countingSort(arr: [11]))
        print(SortingUtility.countingSort(arr: [1,2,3,4,5,6]))
        print("---- Counting Sort Tests ----")
    }
    
    public final class func HeapSort_Tests(){
        print("---- Heap Sort Tests ----")
        SortingUtility.heapSort([2,3,1,89,45])
        print("---- Heap Sort Tests ----")

    }

}
