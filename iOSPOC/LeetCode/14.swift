//
//  14.swift
//  iOSPOC
//
//  Created by Rahul Goel on 02/09/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/longest-common-prefix/

final class P14{
   final class func longestCommonPrefix(_ strs: [String]) -> String {
    
        let prefix:String = ""
        var index = 1

        //if No Strings are there
        if strs.isEmpty{
            return ""
        }

        //Find length of shortest string
        var shortestStringLength:Int = strs[0].count
        while index < strs.count {
            if  strs[index].count < shortestStringLength{
                shortestStringLength = strs[index].count
            }
            index += 1
        }
        
        return prefix
    }
}

extension P14{
    final class func test(){
        print(P14.longestCommonPrefix(["flower","flow","flight"]))
    }
}
