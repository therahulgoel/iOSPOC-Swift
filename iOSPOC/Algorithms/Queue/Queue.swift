//
//  Queue.swift
//  iOSPOC
//
//  Created by Rahul Goel on 01/05/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

//FIFO : First In First Out
final class Queue{
    
    private var values:[Int] = [Int]()

    init(arr:[Int]) {
        values = arr
    }
    
    final func isEmpty()->Bool{
        return values.isEmpty
    }
    
    final func printAll(){
        for ele in values{
            print("\(ele) ")
        }
    }
    
    final func enqueue(ele:Int){
        values.append(ele)
    }
    
    final func dequeue()->Int?{
        var element:Int?
        if !values.isEmpty{
            element =  values.removeFirst()
        }
        return element
    }
}

/*
 Priority Queue :
    Every item is associated with some priority.
    An Element with High priority is dequed before an element with low priority.
    If Two elements has same priority theya re served with their order in the given queue.
 
 Common Operations :
    1. Insert(Item, Priority)
    2. GetHeighestPriorityItem()
    3. DeleteHeighestPriorityItem()
 
 Applications :
    1. CPU Scheduling
    2. Graphs algos Dijkstra's and Prims for MST
 */
final class PriorityQueue{
    
}
