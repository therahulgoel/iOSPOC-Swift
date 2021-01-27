//
//  ArrayUtilityTests.swift
//  iOSPOC
//
//  Created by Rahul Goel on 05/02/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

public final class ArrayUtilityTests {
}

extension ArrayUtilityTests {
    
    public class func unionOfSorted_Tests(){
        print("---- Union of Two Sorted Arrays ----")
        print(ArrayUtility.unionOfSorted(arr1: [1,3,5], arr2: [2,4,6]))
        print(ArrayUtility.unionOfSorted(arr1: [9], arr2: [2,4,6]))
        print(ArrayUtility.unionOfSorted(arr1: [1,3,5], arr2: [2]))
        print(ArrayUtility.unionOfSorted(arr1: [1], arr2: [-2,4,6]))
        print("---- Union of Two Sorted Arrays ----")
    }
        
    public class func searchInsert(){
        print(ArrayUtility().searchInsert([1,3,5,6], 5))
        print(ArrayUtility().searchInsert([1,3,5,6], 2))
        print(ArrayUtility().searchInsert([1,3,5,6], 7))
        print(ArrayUtility().searchInsert([1,3,5,6], 0))

    }
}
