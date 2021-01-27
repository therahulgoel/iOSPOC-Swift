//
//  DoubleLinkedList.swift
//  iOSPOC
//
//  Created by Rahul Goel on 06/03/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

class dNode{
    var value:Int
    var prev:dNode?
    var next:dNode?
    
    init(val:Int, pre:dNode?,nxt:dNode?) {
        value = val
        prev = pre
        next = nxt
    }
}

final class DoubleLinkedList {
    
    var head:dNode?
    
    final class func createNewNode(val:Int)->dNode{
        return dNode(val: val, pre: nil, nxt: nil)
    }

    init() {
    }
    
    init(arr:[Int]) {

    }
}
