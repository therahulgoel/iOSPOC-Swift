//
//  IntersectionofTwoLinkedLists.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 31/03/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/intersection-of-two-linked-lists/

func getIntersectionNode(_ headA: sNode?, _ headB: sNode?) -> sNode? {
    var intersectionFound = false
    var ptr1 = headA, ptr2 = headB
    var lengthA = 0, lengthB = 0
    while ptr1 != nil {
        lengthA += 1
        ptr1 = ptr1?.next
    }
    while ptr2 != nil {
        lengthB += 1
        ptr2 = ptr2?.next
    }
    //Reset the heads of both lists
    ptr1 = headA
    ptr2 = headB
    if lengthA != lengthB {
        var diff = 0
        if lengthA > lengthB {
            diff = lengthA - lengthB
            var i = 0
            while i < diff {
                i += 1
                ptr1 = ptr1?.next
            }
        }else{
            diff = lengthB - lengthA
            var i = 0
            while i < diff {
                i += 1
                ptr2 = ptr2?.next
            }
        }
    }
    while ptr1 != nil || ptr2 != nil {
        if ptr1 === ptr2{
            intersectionFound = true
            break
        }
        ptr1 = ptr1?.next
        ptr2 = ptr2?.next
    }
    if intersectionFound{
        return ptr1
    }
    return nil
}

