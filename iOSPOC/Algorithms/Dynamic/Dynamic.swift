//
//  Dynamic.swift
//  iOSPOC
//
//  Created by Rahul Goel on 28/03/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

/*
 "Those who dont remember their past are condemened to repeat it."
 
 "Don't Solve the subproblem again just reuse it's solution."
 
 "DP solution can help to optimize the recursive solution."
 
 Two Properties of Problems using DP:
    1. Optimal Substructure
    2. Overlapping Subproblem
 
 Tabulation : Bottom Up Approach
 Memoization : Top Down Approach
    1. 1-D Memoization - One variable argument
    2. 2-D Memoization - Two variable argument
    3. N-D Memoization - More than two variable argument
 */

final class Dynamic{
    
    final class func factorial_naive(n:Int)->Int{
        if n <= 0{
            return 1
        }else{
            return n*factorial_naive(n:n-1)
        }
    }

    final class func factorial_tabulation(n:Int)->Int?{
        var table:[Int] = [Int]()
        
        //Add Base cases into table
        table.insert(0, at: 0)
        table.insert(1, at: 1)
        
        //Filling up table in bottom up manner
        var index = 2
        while index <= n {
            table.insert(index * table[index - 1], at: index)
            index = index + 1
        }
        return table.last
    }
    
    final class func factorial_memoization(n:Int,_ memo:inout [Int:Int])->Int{
        if n <= 0 {
            return 1
        }else{
            if let value = memo[n] {  //Check if it is already solved, in Memo
                return value
            }else { //If Not Solve it and store it for later use
                memo[n] = n*factorial_memoization(n:n-1, &memo)
                return memo[n] ?? 0
            }
        }
    }
    
}

extension Dynamic{
    /*
        n Starts from 0 i.e. 0th term, 1st term and so on
     */
    final class func fibonacci_nthTerm_naive(n:Int)->Int{
        if n <= 1 {
            return n
        }else{
            return fibonacci_nthTerm_naive(n:n-1) + fibonacci_nthTerm_naive(n:n-2)
        }
    }
    
    final class func fibonacci_nthTerm_tabulation(n:Int)->Int?{
        var fib:[Int] = [Int](repeating: 0, count: n+1)
        //Add Base cases into table
        fib[0] = 0
        fib[1] = 1
        //Filling up table in bottom up manner
        var index = 2
        while index <= n   {
            fib[index] = fib[index-1] + fib[index-2]
            index = index + 1
        }
        return fib.last
    }
    
    final class func fibonacci_nthTerm_memoization(n:Int, _ memo:inout [Int:Int])->Int{
        if n <= 1{
            return n
        }else{
            var first:Int
            if let value = memo[n-1]{ //Check if it is already solved, in Memo
                first = value
            }else{ //If Not Solve it and store it for later use
                first = fibonacci_nthTerm_memoization(n: n-1, &memo)
            }
            var second:Int
            if let value = memo[n-2]{ //Check if it is already solved, in Memo
                second = value
            }else{ //If Not Solve it and store it for later use
                second = fibonacci_nthTerm_memoization(n: n-2, &memo)
            }
            memo[n] = first + second
            return memo[n] ?? 0
        }
    }
}

extension Dynamic{
    
    final class func lengthLongestCommonSubsequence_naive(str1:String,str2:String)->Int{
        return lengthLCS_naive(Array(str1), Array(str2), str1.count-1, str2.count-1)
    }

    final class func lengthLCS_naive(_ str1:[Character], _ str2:[Character], _ m:Int, _ n:Int)->Int{
        if m < 0 || n < 0{
            return 0
        }else if str1[m] == str2[n]{ //If Both Character mathces
                return 1 + lengthLCS_naive(str1, str2, m-1, n-1)
            }else{
                return maximum(lengthLCS_naive(str1, str2, m-1, n),lengthLCS_naive(str1, str2, m, n-1))
            }
    }
    
    private final class func maximum(_ a:Int, _ b:Int)->Int{
        
        return a > b ? a : b
    }
}


extension Dynamic{
    
    final class func lengthLCS_memo(_ str1:[Character], _ str2:[Character], _ m:Int, _ n:Int,_ memo:inout [[Int]])->Int{
            if m < 0 || n < 0{
                return 0
            }else if str1[m] == str2[n]{ //If Both Character mathces
                memo[m-1][n-1] = 1 + lengthLCS_memo(str1, str2, m-1, n-1,&memo)
                return memo[m-1][n-1]
            }else{
                memo[m-1][n-1] =  maximum(lengthLCS_memo(str1, str2, m-1, n,&memo),lengthLCS_memo(str1, str2, m, n-1,&memo))
                return memo[m-1][n-1]
            }
    }
    
}

extension Dynamic{
    
    final class func lengthLongestCommonSubstring_naive(str1:String,str2:String)->Int{
        return lengthLCSubstring_naive(Array(str1), Array(str2), str1.count - 1, str2.count - 1)
    }
    
    final class func lengthLCSubstring_naive(_ str1:[Character], _ str2:[Character], _ m:Int, _ n:Int)->Int{
        if m < 0 || n < 0{
            return 0
        }else if str1[m] == str2[n]{
            return 1 + lengthLCSubstring_naive(str1, str2, m-1, n-1)
        }else{
            return lengthLCSubstring_naive(str1, str2, m-1, n-1)
        }
    }

}

extension Dynamic {
    final class func lengthlongestIncreasingSubsequence(arr:[Int]){
        
    }
    
    final class func longestIncreasingSubsequence(arr:[Int]){
        
    }

}

extension Dynamic{
    final class func editDistance(str1:String, str2:String){
        
    }
}

extension Dynamic {
    final class func minimumPartition(arr:[Int]){
        
    }
}

extension Dynamic {
    /*
     Given a non-empty array containing only positive integers, find if the array can be partitioned into two subsets such that the sum of elements in both subsets is equal.
     */
    final class func canPartition(_ arr:[Int])->Bool{
        
        if arr.isEmpty {
            return false
        }
        
        //To find sum of all elements
        var index = 0, sum = 0
        while index < arr.count {
            sum = sum + arr[index]
            index = index + 1
        }
        
        let halfSum = sum/2
        
        //If sum is odd : Can not device into two Equal Sums or parts
        if !(sum%2 == 0){
            return false
        }
        
        //Dictonary to store sub-problems results to be-reused
        let memo:[String:Bool] = [String:Bool]()
        return canPartitionInternal(halfSum,arr, 0, 0, memo)
    }
    
    private class func canPartitionInternal(_ sum:Int,_ arr:[Int], _ sumUpto:Int, _ index:Int,_ memo:[String:Bool])->Bool{
        if sumUpto == sum {
            return true
        }else{
                if index > arr.count - 1 {
                    return false
                }
                let leftResult = canPartitionInternal(sum, arr, sumUpto + arr[index], index+1, memo)
                let rightResult = canPartitionInternal(sum, arr, sumUpto, index+1, memo)
                return leftResult || rightResult
        }
    }
}

extension Dynamic{
    final class func Zero_1knapsack_naive(_ W:Int, _ wt:[Int], _ val:[Int], _ currentProfit:Int, _ index:Int, _ currentWeight:Int)->Int{
        
        /*Return No Profit in case
         1. knapsack/Bag Capacity is 0 or Faulty Bag
         2. There is no items available to pick wt array empty
         3. There is no valuable item to pick val array empty
        */
        if index > wt.count - 1 || currentWeight > W || W == 0 || wt.count == 0 || val.count == 0{
            return 0
        }else{
            /*
             For Every Item There are two possibilities
             */
            //1. Either pick it, ADD it to bag, Move to Next
            let leftResult = currentProfit + Zero_1knapsack_naive(W, wt, val, currentProfit + val[index], index+1, currentWeight + wt[index])
            //2. Leave It, Move to Next
            let rightResult = currentProfit + Zero_1knapsack_naive(W, wt, val, currentProfit, index+1, currentWeight)
            //Take the maximum from both the possibilities
            return maximum(leftResult, rightResult)
        }
    }
    
    final class func Zero_1knapsack_tabulation(_ W:Int, _ wt:[Int], _ val:[Int], _ currentProfit:Int, _ index:Int, _ currentWeight:Int)->Int{
        return 0
    }
    
    final class func Zero_1knapsack_memo() {
    
    }
}

extension Dynamic{
    
    /*Find Min number of coins that make a given value
     Given a Value V, if we want to make change for V cents,
     and we have infinite supply of each of C = {C1, C2, C3, ..... Cm}
     what is the min number of coins to make change?
    */
    final class func minNumberCoins(){
        
    }
    
    /*
     Given a value N, if we want to make change for N cents, and we have infinite supply of each of S = { S1, S2, .. , Sm} valued coins, how many ways can we make the change? The order of coins doesn’t matter.
     For example, for N = 4 and S = {1,2,3}, there are four solutions: {1,1,1,1},{1,1,2},{2,2},{1,3}. So output should be 4.
     For N = 10 and S = {2, 5, 3, 6}, there are five solutions: {2,2,2,2,2}, {2,2,3,3}, {2,2,6}, {2,3,5} and {5,5}. So the output should be 5.
     */
    final class func coinChange_naive(N:Int, S:[Int],index:Int)->Int{
        
        if N == 0 || S.count == 0 || index > S.count - 1 {
            return 0
        }
        
        if N == S[index]{
            return 1
        }else{
            //1.
            let multiple =  (N%S[index] == 0) ? N/S[index] : 0
            
            //2.
            let pickCurrentItem = 0
            
            //3.
            let dontPickCurrentItem = 0
            
            return min(min(multiple, pickCurrentItem),dontPickCurrentItem)
        }
    }
    
}
