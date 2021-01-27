//
//  Strings.swift
//  iOSPOC
//
//  Created by Rahul Goel on 28/03/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final class Strings{
    
    /*
        Function that reverses a string, input string is given as an array of characters.
        Do not allocate extra space for another array. Modify the input array inplace with O(1) extra space.
     */
    final class func reverseString(_ s: inout [Character]) {
        var index = 0
        let length = s.count
        var tmp:Character
        while  index < length/2{
            tmp = s[index]
            s[index] = s[length - index - 1]
            s[length - index - 1] = tmp
            index = index + 1
        }
    }
}

//**** String Matching Algorithms : Or "Needle In a haystack" Problems ****
extension Strings{
    
    /*
     Naive Algorithm :
     */
    
    
    /*
     Rabin Karp :
     */

    
    /*
     KMP Algorithm : Knuth Morris Prett Algorithm for String Searching
     */
    
    
    /*
     Longest Proper Prefix Suffix Match Or Not:
     */
}


extension Strings{
    
    //Print All Possible Substrings of given String
    final class func allSubStrings(_ str:String)->[String]{
        let arr:[Character] = Array(str)
        var result:[String] = [String]()
        var i = 0, j = 0
        while i < arr.count {
            j = i
            while j < arr.count {
                 result.append(getSubstringupto(i,j,str))
                j += 1
            }
            i += 1
        }
        return result
    }
    
    private class func getSubstringupto(_ i:Int, _ j:Int, _ str:String)->String{
        var result:[Character] = [Character]()
        var index = i
        while index <= j {
            result.append(Array(str)[index])
            index += 1
        }
        return String(result)
    }
    
    //Print All Possbile Permutations of given String
    final class func allPermutations(_ str:String){
        
    }
    
}

extension Strings{
    
    //Maximum Occurring character in given String
    final class func maxOccuringCharacter(_ str:String)->Character?{
        
        let charArr = Array(str)
        var frequencyArray:[Int] = [Int](repeating: 0, count: 256)
        
        //1. To store frequency of all the characters
        var index = 0
        while  index < charArr.count{
            if let ascii = charArr[index].getAsciiValue(){
                frequencyArray[ascii] += 1
            }
            index += 1
        }
        
        //2. To find out the max frequency character
        var max = 0, maxIndex = 0
        index = 0
        while index < frequencyArray.count {
            if frequencyArray[index] > max{
                max = frequencyArray[index]
                maxIndex = index
            }
            index += 1
        }
        
        return maxIndex.getCharacter()
    }
}

extension Character{
    func getAsciiValue()->Int?{
        return Int(self.unicodeScalars.first?.value ?? 0)
    }
}

extension Int{
    func getCharacter()->Character?{
        if let unicodeScaler = UnicodeScalar(self){
                return Character(unicodeScaler)
        }
        return nil
    }
}


extension Strings{
    //Remove space from given string
    final class func removeAllSpaces(_ str:String)->String{
        var arr:[Character] = Array(str)
        var lastNonSpacePostiton = 0,index = 0
        var numberOfspaces = 0
        
        while  index < str.count{
            if arr[index] != " "{
                arr[lastNonSpacePostiton] = arr[index]
                lastNonSpacePostiton += 1
            }else{
                numberOfspaces += 1
            }
            index += 1
        }
        
        //To remove the last numberOfspaces characters from end of string
        while numberOfspaces > 0{
            arr.remove(at: arr.count - numberOfspaces)
            numberOfspaces -= 1
        }
        
        return String(arr)
    }
}


extension Strings{

    /*
     Write a function to check whether two given strings are anagram of each other or not. An anagram of a string is another string that contains same characters, only the order of characters can be different.
     */
    final class func checkIfAnagram(_ str1:String, _ str2:String)->Bool{
        //If Both strings are of different sizes
        if str1.count != str2.count{
            return false
        }
        
        return false
    }
}

extension Strings{
    //Difference of two large numbers :
    /*
     Given two numbers as strings. The numbers may be very large (may not fit in long long int),
     the task is to find difference of these two numbers.
     */
    final class func differenceOfTwoLargeNumbers(num1:String, num2:String)->String{
        
        //1. check if num1 is greater than num2
        var isNum1Smaller:Bool = false
        if num1.count < num2.count{
            isNum1Smaller = true
        }else{
            isNum1Smaller = false
        }
        
        var index = 0
        var num1Arr = Array(num1)
        var num2Arr = Array(num2)
        var carry = 0
        var result:String = ""
        
        let checkUpto = isNum1Smaller ?  num1Arr.count : num2Arr.count
        while  index < checkUpto {
            if let n1 = Int("\(num1Arr[num1Arr.count - 1 - index])"), let n2 = Int("\(num2Arr[num2Arr.count - 1 - index])") {
                var diff = 0
                if !isNum1Smaller {
                    diff = n1 - n2 - carry
                }else{
                    diff = n2 - n1 - carry
                }
                
                if diff < 0 {
                    carry = 1
                    diff = diff + 10
                }else{
                    carry = 0
                }
                result.append("\(diff)")
            }
            index += 1
        }
        return String(result.reversed())
    }
}

extension Strings{
    
    /*
     Write a function that reverses a string.
     The input string is given as an array of characters.
     Extra Space: O(1) Time: O(n)
     */
    func reverseString(_ s: inout [Character]) {
        var index = 0
        let length = s.count
        var tmp:Character
        while  index < length/2{
            tmp = s[index]
            s[index] = s[length - index - 1]
            s[length - index - 1] = tmp
            index = index + 1
        }
    }
    
}

extension Strings{
    
    /*
     Implement function ToLowerCase() that has a string parameter str,
     and returns the same string in lowercase.
     */
    func toLowerCase(_ str: String) -> String {
        var index:Int = 0
        var arr:[Character] = Array(str)
        while index < arr.count{
            if let asc = getAscii(arr[index]) {
                //Add 32 in ascii value of every capitcal case character to convert it to lowercase
                if ( 65 <= asc && asc <= 90) {
                    arr[index] = Character(UnicodeScalar(asc + 32) ?? " ")
                }
            }
            index += 1
        }
        return String(arr)
    }
    
    func getAscii(_ str:Character)->Int?{
        return Int(str.unicodeScalars.first?.value ?? 0)
    }
}

extension Strings{
    
    /*
     Given a string containing just the characters '(', ')', '{', '}', '[' and ']',
     determine if the input string is valid.
     An input string is valid if:
     Open brackets must be closed by the same type of brackets.
     Open brackets must be closed in the correct order.
     Note that an empty string is also considered valid.
     */
    func isValid(_ s: String) -> Bool {
        var stack:[String] = [String]()
        let dict:[String:String] = ["(": ")",
                                    "{": "}",
                                    "[":"]"]
        
        let strArr:[Character] = Array(s)
        var index = 0
        while index < strArr.count {
            if let ele = stack.last, dict[ele] == "\(strArr[index])"{
                stack.removeLast()
            }else{
                stack.append("\(strArr[index])")
            }
            index += 1
        }
        return stack.isEmpty
    }
    
}

extension Strings{
    
    /*
     Count the number of segments in a string, where a segment is defined to be a
     contiguous sequence of non-space characters.
     Please note that the string does not contain any non-printable characters.
     */
    func countSegments(_ s: String) -> Int {
        var arr:[Character] = Array(s)
        var index = 0, nonSpaceChar = false, count = 0
        while index < arr.count{
            if arr[index] == " "{
                nonSpaceChar = false
            }else{
                if nonSpaceChar == false{
                    nonSpaceChar = true
                    count += 1
                }
            }
            index += 1
        }
        return count
    }

}

extension Strings{
    
    /*
     Given a valid (IPv4) IP address, return a defanged version of that IP address.
     A defanged IP address replaces every period "." with "[.]"
     */
    func defangIPaddr(_ address: String) -> String {
        var arr:[Character] = Array(address)
        var output:String = ""
        var index:Int = 0
        while index < arr.count{
            if arr[index] == "."{
                output = output + "[.]"
            }else{
                output = output + "\(arr[index])"
            }
            index += 1
        }
        return output
    }
    
}

extension Strings{
    
    /*
     Given a string S of lowercase letters, a duplicate removal consists of choosing two adjacent
     and equal letters, and removing them.
     We repeatedly make duplicate removals on S until we no longer can.
     Return the final string after all such duplicate removals have been made.
     It is guaranteed the answer is unique.
     */
    func removeDuplicates(_ S: String) -> String {
        var str:[Character] = Array(S)
        var stack:[Character] = [Character]()
        var top:Int = -1
        var index:Int = 0
        while index < str.count{
            if stack.isEmpty{
                stack.append(str[index])
                top += 1
            }else{
                if stack[top] == str[index]{
                    stack.remove(at:top)
                    top -= 1
                }else{
                    stack.append(str[index])
                    top += 1
                }
            }
            index += 1
        }
        return String(stack)
    }
    
}

extension  Strings{
    
    //solution 1 : Time : O(n^3)
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var i = 0, j = 0, k = 0
        var output:[[Int]] = [[Int]]()
        while i < nums.count {
            j = 0
            while j < nums.count {
                k = 0
                while k < nums.count {
                    if nums[i] + nums[j] + nums[k] == 0 {
                        output.append([i,j,k])
                    }
                    k += 1
                }
                j += 1
            }
            i += 1
        }
        return output
    }
}
