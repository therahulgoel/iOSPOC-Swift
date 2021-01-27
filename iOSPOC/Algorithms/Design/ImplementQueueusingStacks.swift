//
//  ImplementQueueusingStacks.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 10/05/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/implement-queue-using-stacks/

class MyQueue {

    var stack:MyStackForQueue = MyStackForQueue()
    init() {
    }
}

class MyStackForQueue{
    var top = -1
    var arr:[Int] = [Int]()
    
    func push(_ val:Int){
        top += 1
        arr.append(val)
    }
    
    func pop()->Int?{
        if isEmpty(){
            return nil
        }
        let ele = arr.removeLast()
        top -= 1
        return ele
    }
    
    func isEmpty()->Bool{
        return top == -1
    }
}
