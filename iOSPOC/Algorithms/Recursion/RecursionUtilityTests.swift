//
//  RecursionUtilityTests.swift
//  iOSPOC
//
//  Created by Rahul Goel on 05/02/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

public final class RecursionUtilityTests {

     final class func testsumOfArrayElements() {
        print(RecursionUtility.sumOfArrayElements(arr: [1,3,4,5,11,1]))
    }
    
    final class func testprintStarsUpto(){
        RecursionUtility.printStarsUpto(n:10)
    }
    
    final class func testsumUpto(){
        print(RecursionUtility.sumUpto(n:10))
    }
    
    final class func testpowerOfTwo(){
        print(RecursionUtility.powerOf(2,5))
        print(RecursionUtility.powerOf(2,10))
        print(RecursionUtility.powerOf(2,-4))
        print(RecursionUtility.powerOf(2.00000,-2))
        print(RecursionUtility.powerOf(0.00001,2147483647))

    }
    
    final class func testprintBinary(){
        RecursionUtility.printBinary(digits:3)
    }
}
