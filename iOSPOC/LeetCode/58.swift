//
//  58.swift
//  iOSPOC
//
//  Created by Rahul Goel on 02/09/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/length-of-last-word/

final class P58{
    final class func lengthOfLastWord(_ s: String) -> Int {
        var nonSpaceIndex = 0
        var oneNonSpaceEncountered:Bool = false
        for (index,cha) in  s.enumerated() {
            if cha != " "{
                oneNonSpaceEncountered = true
            }
            if cha == " " && oneNonSpaceEncountered{
                nonSpaceIndex = index
            }
        }
        
        if s.isEmpty || !oneNonSpaceEncountered{
            return 0
        }

        if nonSpaceIndex == 0{
            return s.count - nonSpaceIndex
        }else{
            return s.count - nonSpaceIndex
        }
    }
    
    final class func lengthOfLastWordTest(){
        print(lengthOfLastWord(""))
        print(lengthOfLastWord("Hello World"))
        print(lengthOfLastWord("HelloWorld"))
        print(lengthOfLastWord(" "))
        print(lengthOfLastWord(" a"))
    }
}
