//
//  MinStack.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 01/01/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

/*
 LeetCode Problem : https://leetcode.com/problems/min-stack/
 Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

 push(x) -- Push element x onto stack.
 pop() -- Removes the element on top of the stack.
 top() -- Get the top element.
 getMin() -- Retrieve the minimum element in the stack.
 */


/*
Solution 1 : To get the min in Constant Time Idea is to keep min at every item level(upto that item) in stack.
Here we have modified the node structure to store extra info
Solution 2 : If we dont want to modify the node structure we can keep a separate stack for the same.

TIme : O(1) (push, pop, top, getMin) , Extra Space:O(n)
*/

//Node
class StackNode_{
    var val:Int = 0
    var minSofar:Int = Int.min
    
    init(_ value:Int, _ min:Int){
        self.val = value
        self.minSofar = min
    }
}

class MinStack {
    var stack:[StackNode_] = [StackNode_]()
    
    init() {
    }
}

extension MinStack{
    func push(_ x: Int) {
        if stack.isEmpty{
            let node:StackNode_ = StackNode_(x, x)
            stack.append(node)
        }else{
            if let last = stack.last{
                if last.minSofar <= x {
                    let node:StackNode_ = StackNode_(x, last.minSofar)
                    stack.append(node)
                }else{
                    let node:StackNode_ = StackNode_(x, x)
                    stack.append(node)
                }
            }
        }
    }
    
    func pop() {
        if !stack.isEmpty{
            stack.removeLast()
        }
    }
    
    func top() -> Int {
        if let last = stack.last{
            return last.val
        }
        return 0
    }
    
    func getMin() -> Int {
        if let last = stack.last{
            return last.minSofar
        }
        return 0
    }
}


