//
//  StringsTests.swift
//  iOSPOC
//
//  Created by Rahul Goel on 28/03/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final class StringsTests{
    
    final class func testreverseString(){
        var str:[Character] = ["R","A","H","U","L"]
        Strings.reverseString(&str)
        var str1:[Character] = ["R","A","H","U"]
        Strings.reverseString(&str1)
    }
        
    final class func testremoveAllSpaces(){
        let test1 = "I am rahul Goel"
        print(Strings.removeAllSpaces(test1))

        let test2 = "Iamrahul"
        print(Strings.removeAllSpaces(test2))

        let test3 = ""
        print(Strings.removeAllSpaces(test3))

        let test4 = "  "
        print(Strings.removeAllSpaces(test4))
        
        let test5 = "l 1"
        print(Strings.removeAllSpaces(test5))

    }
    
    final class func testmaxOccuringCharacter(){
        var test1 = "I am rahul Goel"
        print(Strings.maxOccuringCharacter(test1))

        test1 = "geeksforgeeks"
        print(Strings.maxOccuringCharacter(test1))

    }
    
    final class func testallSubStrings(){
        let test1 = "abc"
        print(Strings.allSubStrings(test1))

    }
    
    final class func testcheckIfAnagram(){
        var test1 = "abc"
        var test2 = "cba"
        print(Strings.checkIfAnagram(test1, test2))
        
        test1 = "ab"
        test2 = "cba"
        print(Strings.checkIfAnagram(test1, test2))

        test1 = ""
        test2 = ""
        print(Strings.checkIfAnagram(test1, test2))
        
        test1 = ""
        test2 = "3"
        print(Strings.checkIfAnagram(test1, test2))
        
        test1 = "aa"
        test2 = "bb"
        print(Strings.checkIfAnagram(test1, test2))


    }
    
    final class func differenceOfTwoLargeNumbers(){
        print(Strings.differenceOfTwoLargeNumbers(num1: "100",num2: "90"))
        print(Strings.differenceOfTwoLargeNumbers(num1: "1000000000000000000000",num2: "90"))
        print(Strings.differenceOfTwoLargeNumbers(num1: "100",num2: "90"))
        print(Strings.differenceOfTwoLargeNumbers(num1: "100",num2: "90"))
        print(Strings.differenceOfTwoLargeNumbers(num1: "100",num2: "90"))

        
    }
}
