//
//  SIngleLinkedListTests.swift
//  iOSPOC
//
//  Created by Rahul Goel on 05/03/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final class SingleLinkedListTests{
    
    class func testPrintLinkedList(){
        let lList:SingleLinkedList = SingleLinkedList()
        _ = lList.testCreateWith5Nodes()
        lList.printList()
    }
    
    class func testPrintNumberOfNodes(){
        let lList:SingleLinkedList = SingleLinkedList()
        _ = lList.testCreateWith5Nodes()
        print("Count is \(lList.countNumberOfNodes())")
    }
    
    class func testConvertArrayToList(){
        let lList:SingleLinkedList = SingleLinkedList(arr: [1,3,5,7,9,11])
        lList.printList()
    }
    
    class func testdeleteTheLinkedList(){
        let lList:SingleLinkedList = SingleLinkedList(arr: [1,3,5,7,9,11])
        lList.printList()
        lList.deleteTheLinkedList()
        lList.printList()
        
        let lList2:SingleLinkedList = SingleLinkedList(arr: [13])
        lList2.moveLastNodeToFront()
        lList2.printList()
        lList2.deleteTheLinkedList()
        lList2.printList()

    }
    
    class func testmoveLastNodeToFront(){
        let lList:SingleLinkedList = SingleLinkedList(arr: [1,3,5,7,9,11])
        lList.moveLastNodeToFront()
        lList.printList()
        print("\n")
        let lList1:SingleLinkedList = SingleLinkedList(arr: [13,3])
        lList1.moveLastNodeToFront()
        lList1.printList()
        print("\n")
        let lList2:SingleLinkedList = SingleLinkedList(arr: [13])
        lList2.moveLastNodeToFront()
        lList2.printList()

    }
        
    class func testcheckIfPalindrome(){
        let lList:SingleLinkedList = SingleLinkedList(arr: [1,3,3,5,7,9,9,11])
    }
    
    class func containsLoop(){
        let lList:SingleLinkedList = SingleLinkedList(arr: [1,3,5,7,9,11])
        print(lList.containsLoop())
        
        let llsit:SingleLinkedList = SingleLinkedList(arr: [1,3,5,7,9,11])
        llsit.createLinkedListWithLoop(value: 5)
        print(llsit.containsLoop())
        
    }
    
    class func reverseSingleLL(){
        let lList:SingleLinkedList = SingleLinkedList(arr: [1,3,5,7,9,11])
        lList.printList()
        lList.reverseOfSingleLL()
        lList.printList()
    }
    
    class func reverseInGroupsOfSizek(){
        let lList:SingleLinkedList = SingleLinkedList(arr: [1,3,5,7,9,11])
        lList.printList()
        lList.reverseInGroupsOfSize(size: 2)
        lList.printList()
    }
    
    class func midPointIs(){
        let lList1:SingleLinkedList = SingleLinkedList(arr: [1,2,3,4,5])
        print(lList1.midPointIs())
        let lList2:SingleLinkedList = SingleLinkedList(arr: [1,2,3,4,5,6])
        print(lList2.midPointIs())

    }
    
    class func kthElementFromLast(){
        let lList1:SingleLinkedList = SingleLinkedList(arr: [1,2,3,4,5])
        let b = lList1.kthElementFromLast(k: 3)
        let c = lList1.kthElementFromLast(k: 2)
        print(b ?? "")
        print(c ?? "")
    }
    
    class func removeNthFromEnd(){
        let lList1:SingleLinkedList = SingleLinkedList(arr: [1,2,3,4,5])
        _ = lList1.removeNthFromEnd(lList1.head, 2)
        lList1.printList()
        _ = lList1.removeNthFromEnd(lList1.head, 1)
        lList1.printList()
        _ = lList1.removeNthFromEnd(lList1.head, 3)
        lList1.printList()
    }
    
    class func mergeTwoLists(){
        let lList1:SingleLinkedList = SingleLinkedList(arr: [1,2,3])
        let lList2:SingleLinkedList = SingleLinkedList(arr: [4])
        lList1.mergeTwoLists(lList1.head, lList2.head)
        
        
    }
}
