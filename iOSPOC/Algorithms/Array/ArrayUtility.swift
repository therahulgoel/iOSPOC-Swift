//
//  Swift_Practice.swift
//  iOSPOC
//
//  Created by Rahul Goel on 16/01/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final public class ArrayUtility {
}

extension ArrayUtility {
    //Intersection of two given Sorted arrays
    public final class func intersectionOfSorted(arr1:[Int], arr2:[Int])->[Int]{
        var result:[Int] = [Int]()
        
        //1. Get the count of smaller length array
        let count = arr1.count >= arr2.count ? arr1.count : arr2.count
        
        var index = 0, i = 0, j = 0
        while  index < count {
            
            if arr1[i] == arr2[j] {
                result.append(arr1[i]) //if Matches
                i += 1
                j += 1
            }else{
                if arr1[i] < arr2[j]{
                    i += 1
                }else{
                    j += 1
                }
            }
            
            index += 1
        }
        
        //2. Returns the intersection of two given arrays
        return result
    }
}

extension ArrayUtility {
    //Give Sorted Union of two given Sorted arrays With All elements
    public final class func unionOfSorted(arr1:[Int], arr2:[Int])->[Int]{
        var result:[Int] = [Int]()
        var i = 0 //First Array Index
        var j = 0 //Second Array Index
        
        while i < arr1.count && j < arr2.count  {
            
            //In case both the elements are same
            if arr1[i] == arr2[j]{
                result.append(arr1[i])
                result.append(arr2[j])
                i = i + 1
                j = j + 1
                continue
            }
            
            //In case both elements are different
            if arr1[i] < arr2[j]{  //In case left 
                result.append(arr1[i])
                i = i + 1
            }else{
                result.append(arr2[j])
                j = j + 1
            }
        }
        
        //Check Which array is completely Processed, Copy all the remaining items if any from other array into result array
        while i < arr1.count{
            result.append(arr1[i])
            i = i + 1
        }
        while j < arr2.count{
            result.append(arr2[j])
            j = j + 1
        }
        
        return result
    }
}
    
extension ArrayUtility {
    /*
     Given a set of non-negative integers, and a value sum, determine if there is a subset of the given set with sum equal to given sum.
     */
    public final class func doesSumOfSubsetOfSizeTwoExists(arr:[Int],sum:Int)->Bool{
        let status = false
        var dict:[Int:Int] = [Int:Int]()
        var index = 0
        var diff = 0
        while  index < arr.count{
            
            //1. Get the difference of each element with sum given
            diff = sum - arr[index]
            
            if let _ = dict[arr[index]] {
                return true
            }else{
                dict[diff] = diff
            }
                
            index += 1
        }
        return status
    }
}

extension ArrayUtility{
    /*
      find the sum of contiguous subarray within a one-dimensional array of numbers which has the largest sum. Some or all the numbers of array can be negative as well. - Kadane's Algorithm
     */
    public final class func maxContiguousSubArraySum(arr:[Int])->Int{
        let sum = 0
        
        return sum
    }
}

extension ArrayUtility{
    /*
     find the sum of given array with n elements
     */
    public final class func sumOfgivenArrayIs(arr:[Int])->Int{
        var sum = 0, index = 0
        while  index < arr.count{
            sum = sum + arr[index]
            index += 1
        }
        return sum
    }
}

extension ArrayUtility {
    /*
     Find minimum number in given array of n elements
     */
    public final class func minNumberInGivenArrayIs(arr:[Int])->Int{
        var min = arr[0], index = 1
        while  index < arr.count{
            if min > arr[index]{
                min = arr[index]
            }
            index += 1
        }
        return min
    }
}

extension ArrayUtility {
    /*
     Find maximum number in given array of n elements
     */
    public final class func maxNumberInGivenArrayIs(arr:[Int])->Int{
        var max = arr[0], index = 1
        while index < arr.count {
            if max < arr[index]{
                max = arr[index]
            }
        }
        return max
    }
}

extension ArrayUtility{
    /*
     For given 3 sorted arrays find common elements in all of them.
     */
    public final class func commonElementsInSortedArrays(arr1:[Int],arr2:[Int],arr3:[Int])->[Int]{
        let commonElemets:[Int] = [Int]()
        
        return commonElemets
    }
}

extension ArrayUtility {
    /*
     Given array C of size N-1 and given that there are numbers from 1 to N with one element missing, find the missing number.
     */
    public final class func missingNumberInGivenContiguousArrayUptoNIs(arr:[Int], n:Int)->Int{
        let missing = 0
        
        return missing
    }
}

extension ArrayUtility {
    /*
     Given an array of size n and a number k, where k < n. Find kth smallest element in given array. Consider all the elements in array are distinct.
     */
    public final class func kthSmallestElementIs(arr:[Int])->Int{
        let smallest = 0
        return smallest
    }
}

extension ArrayUtility {
    
}

extension ArrayUtility {

    //Find element for whom all left element are small and right are big
    public final class func balancePoint(_ arr:[Int]){
        if arr.isEmpty{
        return
        }
        
        var index = 1, leftMax = arr[0]
        
        while index < arr.count {
            if arr[index] < leftMax{
                leftMax = arr[index]
            }
            index = index + 1
        }
    }
}

extension ArrayUtility {
    /*
     Given an array and a value, find if there is a triplet in array whose sum is equal to the given value. If there is such a triplet present in array, then print the triplet and return true. Else return false.
     
     Solution 1:
        Generate all possible triplets and compare sum of every triplet with given sum - O(N^3)
     Solution 2:
        For every element in given array use two sum problem - O(N^2)
     */
    final class func findTripletwithSum(_ sum:Int){
        
    }
}

extension ArrayUtility{
    
    //Remove Duplicates from Sorted Array
    func removeDuplicates(_ nums: inout [Int]) -> Int {
            var iterator:Int = 1, index = 0
            if nums.count <= 1{
                return nums.count
            }
            while iterator < nums.count {
                if nums[index] == nums[iterator]{
                    //If Next Element is same, stay there and keep on removing Next
                    nums.remove(at: iterator)
                }else{
                    //IF Mismatch move to next
                    index = iterator
                    iterator += 1
                }
            }
            return nums.count
    }
}

extension ArrayUtility{
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        return nums.count
    }
}

extension ArrayUtility{
    
    
    /*
     Given a sorted array and a target value, return the index if the target is found.
     If not, return the index where it would be if it were inserted in order.
     You may assume no duplicates in the array.
     */
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        //Use Binary Search
        var start = 0, mid = 0, end = nums.count - 1
        while start <= end {
            mid = (start + end) / 2
            if nums[mid]  == target{
                return mid
            }else if  target <  nums[mid]{ //Search in Left Side of Mid
                end = mid - 1
            }else if target > nums[mid]{ //Search in Right Side of Mid
                start = mid + 1
            }
        }
        if target > nums[mid]{
            return mid + 1
        }else{
            return mid
        }
    }
    
    
}

extension ArrayUtility{
    /*
     Search element in given Sorted list of numbers.
     */
    func binarySearch(_ nums: [Int], _ target: Int) -> Int {
        var index = -1
        var start = 0, mid = 0, end = nums.count - 1
        while start <= end {
            mid = (start + end)/2
                if nums[mid] == target{
                    index =  mid
                    break
                }else if nums[mid] < target{
                    start = mid + 1
                }else if nums[mid] > target{
                    end = mid - 1
                }
            }
            return index
        }
}

extension ArrayUtility{
    
    /* Solution 2 :
     Given an integer array nums, find the contiguous subarray (containing at least one number)
     which has the largest sum and return its sum. Array may contain negative numbers
     Time : O(N)
     */
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var index = 0
        var map:[Int:Int] = [Int:Int]()
        
        while  index < nums.count{
            
            let diff = target - nums[index]
            if let inded = map[nums[index]]{
                return [inded,index]
            }else{
                map[diff] = index
            }
            index += 1
        }
        return []
    }
}

extension ArrayUtility{

    /*
     Given an integer array nums, find the contiguous subarray (containing at least one number)
     which has the largest sum and return its sum. Array may contain negative numbers
     */
    func maxSubArray(_ nums: [Int]) -> Int {
        //Imp Point here is max_so_far should be min of all the negative numbers possible for Int
        var max_end_here:Int = 0, max_so_far:Int = Int.min, index = 0
        
        while index < nums.count{
            max_end_here = max_end_here + nums[index]
            if  max_so_far < max_end_here {
                max_so_far = max_end_here
            }
             if max_end_here < 0{
                max_end_here = 0
            }

            index += 1
        }
        return max_so_far
    }
    
}

extension ArrayUtility{
    /*
     Given a non-empty array of integers, every element appears
     twice except for one. Find that single one.
     */
    func singleNumber(_ nums: [Int]) -> Int {
        var index:Int = 0
        var output:Int = 0  //As X-OR of 0 with any number gives the number itself
        //and X-OR of two same number is alwyas 0
        
        while index < nums.count{
            output = output ^ nums[index]
            index += 1
        }
        return output
    }
}

extension ArrayUtility{
    
    /*
     Given an array, rotate the array to the right by k steps,
     where k is non-negative.
     */
    //Solution 1: By Taking Separate Array and placing all the values to their right    position Time : O(n)   Space : O(n)
    func rotate(_ nums: inout [Int], _ k: Int) {
        var index:Int = 0
        var outputArray:[Int] = Array(repeating:0, count: nums.count)
        
        while index < nums.count {
            outputArray[ (index + k) % nums.count] = nums[index]
            index += 1
        }
        nums = outputArray
    }

}

extension ArrayUtility{

    /*
     Given an array containing n distinct numbers taken from 0, 1, 2, ..., n,
     find the one that is missing from the array
     */
    func missingNumber(_ nums: [Int]) -> Int {
        var index:Int = 0
        var sum:Int = 0
        let n:Int = nums.count
        while index < nums.count {
            sum = sum + nums[index]
            index += 1
        }
        
        //Sum of Numbers from 0 to n is
        let sumIs = n * (n + 1) / 2
        //Missing term is the diff of both
        return sumIs - sum
    }

}

extension ArrayUtility{
    
    /*
     Given an array of size n, find the majority element. The majority element is
     the element that appears more than ⌊ n/2 ⌋ times.
     You may assume that the array is non-empty and the majority element always exist in the array.
     */
    func majorityElement(_ nums: [Int]) -> Int {
        var majority_index = 0, count = 1
        var index = 1
        while index < nums.count {
            if nums[majority_index] == nums[index]{
                count = count + 1
            }else{
                count = count - 1
            }
            
            if count == 0 {
                majority_index = index
                count = 1
            }
            index = index + 1
        }
        return nums[majority_index]
    }

}

extension ArrayUtility{
    
    //Time : O(n)
    /*Given a fixed length array arr of integers, duplicate each occurrence of zero,
    shifting the remaining elements to the right.
    Note that elements beyond the length of the original array are not written.
    Do the above modifications to the input array in place, do not return anything
    from your function.
    */
    func duplicateZeros(_ arr: inout [Int]) {
        var index:Int = 0
        while index < arr.count {
            if arr[index] == 0 {
                if index + 1 < arr.count {
                    //Insert 0 at next index
                    arr.insert(0, at: index + 1)
                    //Remove last element at the same time
                    arr.removeLast()
                    //Skip the just replicated 0 index
                    index += 1
                }
            }
            index += 1
        }
    }
}

extension ArrayUtility {
    
    /**
     Given an array A of non-negative integers, return an array consisting of all the
     even elements of A, followed by all the odd elements of A.
     You may return any answer array that satisfies this condition.
     */
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var tmpArr = A
        var start:Int = 0
        var last:Int = A.count - 1
        while start < last {
            //If Number at the start is even Skip
            if tmpArr[start] % 2 == 0 {
                start += 1
            }else{ //
                if tmpArr[last] % 2 == 0 { //If Number at last is even and number
                    //at start is odd just swap
                    //Swap
                    let tmp = tmpArr[last]
                    tmpArr[last] = tmpArr[start]
                    tmpArr[start] = tmp
                    start += 1
                    last -= 1
                }else { //If Number in at last is odd
                    last -= 1
                }
            }
        }
        return tmpArr
    }
}

extension ArrayUtility{
    
    /*
     In MATLAB, there is a very useful function called 'reshape', which can reshape a matrix into a new one with different size but keep its original data.
     You're given a matrix represented by a two-dimensional array, and two positive integers r and c representing the row number and column number of the wanted reshaped matrix, respectively.
     The reshaped matrix need to be filled with all the elements of the original matrix in the same row-traversing order as they were.
     If the 'reshape' operation with given parameters is possible and legal, output the new reshaped matrix; Otherwise, output the original matrix.
     */
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        var output:[[Int]] = [[Int]]()
        let size = nums.flatMap { $0 }.count
        if r*c > size {
             //Can not reshape
            output = nums
        }else{
            var count:Int = 0
            var tmp:[Int] = [Int]()
            for row in nums {
                for item in row {
                    if count < c {
                        count += 1
                        tmp.append(item)
                        if count == c {
                             output.append(tmp)
                             tmp.removeAll()
                             count = 0
                        }
                    }
                }
            }
        }
        return output
    }

}

extension ArrayUtility {

    /*
     Given a matrix A, return the transpose of A.
     The transpose of a matrix is the matrix flipped over it's main diagonal,
     switching the row and column indices of the matrix.
     */
    func transpose(_ A: [[Int]]) -> [[Int]] {
        let rows:Int = A.count
        let columns:Int = A[0].count
        var output:[[Int]] = Array(repeating: Array(repeating: 0, count: rows), count: columns)
        var i = 0, j = 0
        while i < columns { //rows
            j = 0
            while j < rows { //columns
                output[i][j] = A[j][i]
                j += 1
            }
            i += 1
        }
         return output
    }
}

extension ArrayUtility{
    /*
     An array is monotonic if it is either monotone increasing or monotone decreasing.
     An array A is monotone increasing if for all i <= j, A[i] <= A[j].  An array A
     is monotone decreasing if for all i <= j, A[i] >= A[j].
     Return true if and only if the given array A is monotonic.
     */
    func isMonotonic(_ A: [Int]) -> Bool {
        var isIncreasing:Bool = false
        var isMonotone:Bool = true
        var index:Int = 0
        var setOnce:Bool = false
        
        while index < A.count - 1 {
            //To check to find the trend
            if !setOnce {
                if A[index] < A[index + 1]{
                   isIncreasing = true
                    setOnce = true
                }else if A[index] > A[index + 1]{
                    isIncreasing = false
                    setOnce = true
                }
            }
                if isIncreasing {
                    if A[index] > A[index + 1]{
                        isMonotone = false
                        break
                    }
                }else {
                     if A[index] < A[index + 1]{
                        isMonotone = false
                        break
                    }
                }
            index += 1
        }
        return isMonotone
    }

}

extension ArrayUtility{
    
    /*Given a binary array, find the maximum number of consecutive 1s in this array.
    Time : O (n)
     */
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var index:Int = 0
        var count = 0, max = 0
        while index < nums.count {
            if nums[index] == 1 {
                count += 1
                if count > max {
                    max = count
                }
            }else{
                count = 0
            }
            index += 1
        }
        return max
    }
}

extension ArrayUtility{
    /*
     Given an array of integers, find if the array contains any duplicates.
     Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
     Time : O(n) Space : O(n)
     */
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict:[Int:Int] = [Int:Int]()
        var index:Int = 0
        var status = false
        while index < nums.count {
            if let _ = dict[nums[index]]{
                status = true
                break
            }else{
                dict[nums[index]] = nums[index]
            }
            index += 1
        }
        return status
    }
}

extension ArrayUtility{
    /**
     Implement int sqrt(int x).
     Compute and return the square root of x, where x is guaranteed to be a non-negative integer.
     Since the return type is an integer, the decimal digits are truncated and only the integer part of the result is returned.
     */
    func mySqrt(_ x: Int) -> Int {
        if x == 0 || x == 1{
            return x
        }
      //since sqrt of any number can not be greater than its half
      //thus taking end = x/2
      var start = 0, mid = 0, end = x/2
        var floorValue = 0
        while start <= end{
            mid = (start + end)/2
            if (mid*mid == x){
                return mid
            }else if (mid*mid < x){
                start = mid + 1
                floorValue = mid
            }else{
                end = mid - 1
            }
        }
        return floorValue
    }
}

extension ArrayUtility{
    /*
     Given an array of integers nums sorted in ascending order, find the starting and ending position of a given target value.
     Your algorithm's runtime complexity must be in the order of O(log n).
     If the target is not found in the array, return [-1, -1].
     Time : Log(N)
     */
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var pos:[Int] = [-1,-1]
        var left = 0, mid = 0, right = nums.count - 1
        //1. To find first Position of Element
        while left <= right {
            mid = (left + right) / 2
            if nums[mid] == target{ //If Found
                pos[0] = mid
                //Check for Left Element
                if mid - 1 >= 0 {
                    if (nums[mid - 1] == nums[mid] ){
                        right = mid - 1
                    }else{
                        break
                    }
                }else{
                    break
                }
            }
            else if (nums[mid] < target){
                left = mid + 1
            }else if (nums[mid] > target){
                right = mid - 1
            }
        }
        left = 0
        right = nums.count - 1
        //2. To Find Last Position of Element
        while left <= right {
            mid = (left + right) / 2
            if nums[mid] == target{ //If Found
                pos[1] = mid
                //Check for Right Element
                if mid + 1 <= nums.count - 1 {
                    if (nums[mid + 1] == nums[mid] ){
                        left = mid + 1
                    }else{
                        break
                    }
                }else{
                    break
                }
            }
            else if (nums[mid] < target){
                left = mid + 1
            }else if (nums[mid] > target){
                right = mid - 1
            }
        }
        return pos
    }

}







