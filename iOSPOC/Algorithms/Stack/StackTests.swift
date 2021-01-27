//
//  StackTests.swift
//  iOSPOC
//
//  Created by Rahul Goel on 12/03/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

class StackTests{
    
    final class func testPushAndPop(){
        let stck = Stack.init(arr: [1,4,6,7,99])
        stck.printStack()
        stck.push(val: 90)
        stck.printStack()
        stck.pop()
        stck.printStack()
    }
    
    final class func testSackWithLinkedList(){
        let stack:StackWithLinkedList = StackWithLinkedList()
        stack.push(3)
        stack.push(4)
        stack.push(5)
        stack.push(6)
        stack.printStack()
        stack.pop()
        stack.printStack()
        stack.pop()
        stack.printStack()
        stack.pop()
        stack.printStack()
        stack.pop()
        stack.printStack()
    }
    
}
