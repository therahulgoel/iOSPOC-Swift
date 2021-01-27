//
//  Stack.swift
//  iOSPOC
//
//  Created by Rahul Goel on 12/03/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation


//Stack Using Arrays
final class Stack{
    private var values:[Int] = [Int]()
    
    init() {
    }
    
    init(arr:[Int]) {
        values = arr
    }
    
    final func push(val:Int){
        values.append(val)
    }
    
    final func pop(){
        values.removeLast()
    }
    
    final func printStack(){
        print("Stack Track Is :")
        for val in values {
            print(val, terminator : " ")
        }
        print("")
    }
}

//Stack Using Linked List
class StackNode{
    var val:Int
    var next:StackNode?
    
    init(_ value:Int,_ nx:StackNode?) {
        val = value
        next = nx
    }
}

final class StackWithLinkedList {

    var top:StackNode?
    init() {
    }
    
    final func push(_ val:Int){
        if top == nil{
            top = newNode(val)
        }else{
            let tmp = newNode(val)
            tmp.next = top
            top = tmp
        }
    }
    
    final func isEmpty()->Bool{
        if let _ = top{
            return false
        }else{
            return true
        }
    }
    
    final func pop(){
        if top == nil{
            return
        }
        top = top?.next
    }
    
    final func printStack(){
        print("----")
        var tmp = top
        while tmp != nil {
            if let value = tmp?.val{
                print(value)
            }
            tmp = tmp?.next
        }
        print("----")

    }
    
    private func newNode(_ val:Int)->StackNode{
        return StackNode(val,nil)
    }
}
