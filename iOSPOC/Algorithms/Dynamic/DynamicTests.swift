//
//  DynamicTests.swift
//  iOSPOC
//
//  Created by Rahul Goel on 28/03/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final class DynamicTests{
    final class func factorial_tabulation(){
        print(Dynamic.factorial_tabulation(n: 5) ?? "")
        print(Dynamic.factorial_tabulation(n: 6) ?? "")
        print(Dynamic.factorial_tabulation(n: 7) ?? "")

    }
    
    final class func factorial_memoization(){
        var dict:[Int:Int] = [Int:Int]()
        print(Dynamic.factorial_memoization(n: 5, &dict))
        print(Dynamic.factorial_memoization(n: 0, &dict))
        print(Dynamic.factorial_memoization(n: -1, &dict))
        print(Dynamic.factorial_memoization(n: 6, &dict))
    }
}

extension DynamicTests {
    final class func testlengthLongestCommonSubsequence(){
        print(Dynamic.lengthLongestCommonSubsequence_naive(str1:"ABC", str2:"XYZ"))
        print(Dynamic.lengthLongestCommonSubsequence_naive(str1:"ABCD", str2:"AZYBMCD"))
        print(Dynamic.lengthLongestCommonSubsequence_naive(str1:"ABC", str2:"ABC"))
        print(Dynamic.lengthLongestCommonSubsequence_naive(str1:"A", str2:"B"))
        print(Dynamic.lengthLongestCommonSubsequence_naive(str1:"ABC", str2:"XYZ"))
        print(Dynamic.lengthLongestCommonSubsequence_naive(str1:"ABC", str2:"XYZ"))
    }
    
    final class func lengthLongestCommonSubsequence_tabulation(){
        
    }
    
    final class func lengthLongestCommonSubsequence_memoization(){
        
    }
    
}

extension DynamicTests {
    final class func fibonacci_tabulation(){
        print(Dynamic.fibonacci_nthTerm_tabulation(n: 5) ?? "")
        print(Dynamic.fibonacci_nthTerm_tabulation(n: 6) ?? "")
        print(Dynamic.fibonacci_nthTerm_tabulation(n: 7) ?? "")

    }
    
    final class func fibonacci_memoization(){
        var dict:[Int:Int] = [Int:Int]()
        print(Dynamic.fibonacci_nthTerm_memoization(n: 0, &dict))
        print(Dynamic.fibonacci_nthTerm_memoization(n: 1, &dict))
        print(Dynamic.fibonacci_nthTerm_memoization(n: 2, &dict))
        print(Dynamic.fibonacci_nthTerm_memoization(n: 3, &dict))
        print(Dynamic.fibonacci_nthTerm_memoization(n: 4, &dict))
        print(Dynamic.fibonacci_nthTerm_memoization(n: 5, &dict))


    }
}

extension DynamicTests {
    final class func lengthLongestCommonSubstring_naive(){
        print(Dynamic.lengthLongestCommonSubstring_naive(str1:"ABC", str2:"XYZ"))
        print(Dynamic.lengthLongestCommonSubstring_naive(str1:"ABCD", str2:"AZYBMCD"))
        print(Dynamic.lengthLongestCommonSubstring_naive(str1:"ABC", str2:"ABC"))
        print(Dynamic.lengthLongestCommonSubstring_naive(str1:"A", str2:"B"))
        print(Dynamic.lengthLongestCommonSubstring_naive(str1:"ABC", str2:"XYZ"))
        print(Dynamic.lengthLongestCommonSubstring_naive(str1:"ABC", str2:"XYZ"))
    }
}

extension DynamicTests{
    final class func canPartition(){
        print(Dynamic.canPartition([1,5,4]))
    }
}

extension DynamicTests{
    final class func Zero_1knapsack(){
        print(Dynamic.Zero_1knapsack_naive(50, [10,20,30], [60,100,120], 0, 0, 0))
        print(Dynamic.Zero_1knapsack_naive(0, [10,20,30], [60,100,120], 0, 0, 0))
    }
}

