//
//  20.swift
//  iOSPOC
//
//  Created by Rahul Goel on 09/10/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final class P20{
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

extension P20{
    func test(){
        print(P20().isValid("()"))
        print(P20().isValid("()[]{}"))
        print(P20().isValid("(]"))
    }
}


