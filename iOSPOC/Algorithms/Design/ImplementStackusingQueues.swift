//
//  ImplementStackusingQueues.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 22/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/implement-stack-using-queues/

class MyStack {
    var queue:MyQueueForStack = MyQueueForStack()
    init() {
    }
    //Time : O(1)
    func push(_ x: Int) {
        queue.enqueue(x)
    }
    //Time : O(n)
    func pop() -> Int {
        let topV = top()
        var i = 0
        while i < topV{
            let ele = queue.dequeue()
            if i == topV - 1{
                return ele
            }else{
               queue.enqueue(ele)
            }
            i += 1
        }
        return 0
    }
    func top() -> Int {
        return queue.arr[queue.rear]
    }
    
    func empty() -> Bool {
        return queue.isEmpty()
    }
}

class MyQueueForStack{
    var arr:[Int] = [Int]()
    var front:Int = -1 //To Delete Elements from Queue
    var rear:Int = -1 //To insert Elements in Queue
    
    init() {
    }
    
    func enqueue(_ val:Int){
        rear += 1
        arr.append(val)
    }
    
    func dequeue()->Int{
        front += 1
        let ele = arr[front]
        return ele
    }
    
    func isEmpty()->Bool{
       return front == rear
    }
}
