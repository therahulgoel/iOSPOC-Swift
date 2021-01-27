//
//  Swift_Sorting.swift
//  iOSPOC
//
//  Created by Rahul Goel on 02/02/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final public class SortingUtility {
}

extension SortingUtility{
    /*
     Bubble Sort :
     In Every Pass one Element will be its right position or Bubble Out
     */
    public final class func bubbleSort( arr:[Int])->[Int]{
        var arr1 = arr
        var swpaped:Bool = false
        var i = 0, j = 0
        
        while i < arr1.count - 1 {
            
            swpaped = false
            j = 0
            
            while j < arr1.count - 1 - i {
                
                //Swap The Numbers
                if arr1[j] > arr1[j+1] {
                    let tmp = arr1[j]
                    arr1[j] = arr1[j+1]
                    arr1[j+1] = tmp
                    swpaped = true
                }
                j = j + 1
            }
            
            //If Inner loop Does'nt swap not even once, Break No Need to go on
            if swpaped == false {
                break
            }
            
            i = i + 1
        }
        
        return arr1
    }
}

extension SortingUtility{
    /*
        Merge Sort
     */
    public final class func mergeSort(arr:[Int],left:Int,right:Int){
        if left < right{
            
            //To calculate Mid point of array
            let mid = (left + right - 1)/2
            
            //Divide Step
            mergeSort(arr: arr, left: left, right: mid)
            mergeSort(arr: arr, left: mid+1, right: right)
            //Combine Step
            merge(arr: arr, left: left, mid: mid, right: right)
        }
    }
    
    public final class func merge(arr:[Int], left:Int, mid:Int, right:Int){
        
        //To create Two Sorted Array To be merged into One
        let n1 = mid - left + 1
        let n2 = right - mid
        
        var arr1:[Int] = [Int]()
        var arr2:[Int] = [Int]()
        
        //Copy elements from arr into two separate arrays
        var i = 0
        while i < n1 {
            arr1.append(arr[i])
            i += 1
        }
        while i < n2 {
            arr2.append(arr[i])
            i += 1
        }
        
    }
}

extension SortingUtility{
    /*
     Quick Sort :
     Uses Divide and conquer approach, in which we select a pivot element and partitions the given array around that pivot element.
     We can select pivot elements in four ways :
     1. Always pick first element as pivot
     2. Always pick last element as pivot
     3. Pick a random element as pivot
     4. pick median as pivot
     
     Key process in quicksort is partition(),
     
     Time Complexity : O(n^2) in case array is already sorted
     */
    public final class func quickSort(arr:[Int]){
        
    }
}

extension SortingUtility{
    /*
        Heap Sort
        "Sorting Elements in Increasing Order Steps :"
     1. Build Max Heap From Input Data
     2. At this point, the largest item is stored at the root of the heap. Replace it with the last item of the heap followed by reducing the size of heap by 1
     3. Again Heapify the root of tree
     4. Repeat above steps until, Size of Heap > 1
     
     */
    public final class func heapSort(_ arr:[Int]){
        
    }
}

extension SortingUtility{
    /*
     Counting Sort :
     */
    public final class func countingSort(arr:[Int])->[Int]{
        let results:[Int] = arr
        
        //To store frequency of every element
        var frequency:[Int] = [Int](repeating: 0, count: (results.max() ?? 0) + 1 )
        
        for i in 0..<results.count {
            frequency[results[i]] = frequency[results[i]] + 1
        }
        
        for i in 0..<frequency.count{
            if frequency[i] > 0{
                
            }
        }
    
        return results
    }
}

extension SortingUtility{
    /*
     Selection Sort :
     In Every iteration Selects Minimum and swap it with element starting from left and do it upto n times
     Time : O(n^2)
     */
    public final class func selectionSort(arr:[Int])->[Int]{
        var result:[Int] = arr
        var i = 0, j = 0, minIndex = 0
        while  i < result.count {
            
            //Find Minimum in every pass
            j = i
            minIndex = i
            while j < result.count {
                if result[minIndex] > result[j] {
                    minIndex = j
                }
                j += 1
            }
            
            //Swap minIndex Element Starting from i one by one
            let tmp = result[i]
            result[i] = result[minIndex]
            result[minIndex] = tmp
            i += 1
        }
        
        return result
    }
}

extension SortingUtility{
    /*
     Insertion Sort : Works the way we sort playing cards in our hands
     */
    public final class func insertionSort(arr:[Int])->[Int]{
        var results:[Int] = arr
        var j = 0
        for i in 1..<results.count {
            j = i-1
            while j >= 0 && results[i] < results[j] {
                j -= 1
            }
            let el = results[i]
            results.remove(at: i)
            results.insert(el, at: j+1)
        }
        return results
    }
}

extension SortingUtility{
    /*
        Bucket Sort
     */
}

extension SortingUtility{
    /*
        Radix Sort
     */
}

