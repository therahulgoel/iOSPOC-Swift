
//
//  DesignaStackWithIncrementOperation.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 26/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/design-a-stack-with-increment-operation/

class CustomStack {
    var maxSize = -1
    var top = -1
    var arr:[Int] = [Int]()
    init(_ maxSize: Int) {
        self.maxSize = maxSize
        arr = Array(repeating: -1, count: maxSize)
    }
    func push(_ x: Int) {
        if isOverflow(){
           return
        }
        top += 1
        arr[top] = x
    }
    func pop() -> Int {
        if isEmpty(){
            return top
        }
        let ele = arr[top]
        arr[top] = -1
        top -= 1
        return ele
    }
    func isEmpty()->Bool{
        return top == -1
    }
    func isOverflow()->Bool{
        return maxSize == (top +  1 )
    }
    func increment(_ k: Int, _ val: Int) {
        let upto = (k < maxSize) ? k : maxSize
        var i = 0
        while i < upto {
            arr[i] = arr[i] + val
            i += 1
        }
    }
}
