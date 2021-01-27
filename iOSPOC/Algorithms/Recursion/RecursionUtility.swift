//
//  RecursionUtility.swift
//  iOSPOC
//
//  Created by Rahul Goel on 05/02/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

public final class RecursionUtility {
    
    final class func sumOfArrayElements(arr:[Int])->Int{
        return sumOfElement(arr: arr, count:arr.count-1)
    }
    
    private final class func sumOfElement(arr:[Int], count:Int)->Int{
        if count <= 0{
            return arr[count]
        }else{
            return arr[count] + sumOfElement(arr:arr, count: count - 1)
        }
    }
}

extension RecursionUtility{
    
    final class func printReverseOfString(str:String){
        reverseOfString(Array(str), str.count - 1)
    }
    
    private final class func reverseOfString(_ str:[Character],_ count:Int){
        if count < 0{
            return
        }else{
            print("\(str[count])", separator: "")
            reverseOfString(str, count - 1)
        }
    }
    
}

extension RecursionUtility{
    
    final class func printStarsUpto(n:Int){
        if n == 1{
            print("*", separator: "")
        }else{
            print("*",separator: "")
            printStarsUpto(n: n-1)
        }
    }
}

extension RecursionUtility{
    final class func sumUpto(n:Int)->Int{
        if n <= 1{
            return n
        }else{
            return 1 + sumUpto(n:n-1)
        }
    }
}

extension RecursionUtility{
    
    final class func powerOf(_ x: Double, _ n: Int)->Double{
        if n == 0 {
            return 1
        }else if (n == 1){
            return x
        }else{
            if n < 0{
                let pow:Double = powerOf(x, n/2)
                if (n%2 == 0){ //Even
                    return 1/pow * pow
                }else{
                    return 1/(x * pow * pow)
                }
            }else{
                let pow = powerOf(x, n/2)
                if (n%2 == 0){ //Even
                    return pow * pow
                }else{
                    return x * pow * pow
                }
            }
        }
    }
    
}

extension RecursionUtility{
    
    final class func printBinary(digits:Int){
        
    }
}
