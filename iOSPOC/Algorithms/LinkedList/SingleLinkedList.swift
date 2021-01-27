//
//  SingleLinkedList.swift
//  iOSPOC
//
//  Created by Rahul Goel on 05/03/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

class sNode{
    var value:Int
    var next:sNode?
    
    init(val:Int,nxt:sNode?) {
        value = val
        next = nxt
    }
}

final class SingleLinkedList{
    var head:sNode?
    
    final class func createNewNode(val:Int)->sNode{
        return sNode(val: val, nxt: nil)
    }
    
    //MARK : Default Initializer
    init() {
    }
    
    //To create Linked List with given array of values
    init(arr:[Int]) {
        var index = 0
        var tmp:sNode?
        while index < arr.count {
            if index == 0 {
                head = SingleLinkedList.createNewNode(val: arr[index])
                tmp = head
            }else{
                tmp?.next = SingleLinkedList.createNewNode(val: arr[index])
                tmp = tmp?.next
            }
            index += 1
        }
    }
    
    final func testCreateWith5Nodes()->sNode?{
        head = SingleLinkedList.createNewNode(val: 1)
        head?.next = SingleLinkedList.createNewNode(val: 2)
        head?.next?.next = SingleLinkedList.createNewNode(val: 3)
        head?.next?.next?.next = SingleLinkedList.createNewNode(val: 4)
        head?.next?.next?.next?.next = nil
        return head
    }
}

extension SingleLinkedList{
    
    final func printList(){
        var tmpPtr:sNode? = head
        print("\n")
        while tmpPtr != nil {
            if let head = tmpPtr{
                print(head.value, terminator:" ")
            }
            tmpPtr = tmpPtr?.next
        }
    }

    final func countNumberOfNodes()->Int{
        var count = 0
        var tmpPtr:sNode? = head
        
        while tmpPtr != nil {
            count += 1
            tmpPtr = tmpPtr?.next
        }
        return count
    }

    final func reverseOfSingleLL(){
        var prevPtr:sNode?  //Previous Pointer
        var currentPtr:sNode? = head  //Current Pointer
        var nxtPtr:sNode? //Next Pointer
        
        while currentPtr != nil{
            nxtPtr = currentPtr?.next //Store Next Element
            currentPtr?.next = prevPtr //Set Currnet Pointer Next to previous
            prevPtr = currentPtr  //Move prev pointer to current
            currentPtr = nxtPtr   //Move Current Pointer to next
        }
        head = prevPtr   //Re-Assign head to the last element
    }
    
    final func reverseInGroupsOfSize(size:Int){
        //To get the length of List
        let length = countNumberOfNodes()
        var index =  0
        
        var prevPtr:sNode?  //Previous Pointer
        var currentPtr:sNode? = head  //Current Pointer
        var nxtPtr:sNode? //Next Pointer
        
        while index < length {
            nxtPtr = currentPtr?.next
            currentPtr?.next = prevPtr
            prevPtr = currentPtr
            currentPtr = nxtPtr
            if index%size == 0{
                head = prevPtr
            }
            index += 1
        }
        head = prevPtr
    }
    
    final func deleteValue(val:Int){
        var tmpPtr:sNode? = head
        var nxtPtr:sNode? = head

        while nxtPtr != nil {
            if let nxtPtr = nxtPtr{
                if nxtPtr.value == val{
                    
                }
            }
            tmpPtr = tmpPtr?.next
            nxtPtr = nxtPtr?.next?.next
        }
    }
    
    final func deleteValueAtPosition(pos:Int)->Bool{
        let status:Bool = false
        return status
    }
    
    final func deleteTheLinkedList(){
        //Linked list might have loop in it, thus need to delete every node one by one
        var tmpPtr:sNode? = head
        var nextPtr:sNode? = head
        
        while nextPtr != nil {
            tmpPtr = nextPtr
            nextPtr = tmpPtr?.next
            
            tmpPtr?.next = nil
            tmpPtr = nil
        }
        
    }
    
    /*
     Possible Solutions:
        1. Get Length of LinkedList say n, now traverse the list again upto n - k + 1 nodes.
        2. Use two pointers head and reference increment reference pointer upto k times then
        start head pointer and increment upto reference pointer reaches end of list
     */
    final func kthElementFromLast(k:Int)->Int?{
        var tmpPtr:sNode? = head
        var anotherPtr:sNode? = head
        var count = 1
        while anotherPtr != nil{
            if count > k {
                tmpPtr = tmpPtr?.next
            }
            anotherPtr = anotherPtr?.next
            count += 1
        }
        return tmpPtr?.value
    }
    
    
    final func convergingPointOfLists(list1:sNode,list2:sNode){
        
    }
    
    /*
        Remove Duplicates from given Sorted Linked List.
        List should be traversed only once.
         Input: 1->1->2->3->3
         Output: 1->2->3
     */
    final func removeDuplicatesFromSortedList(_ rt:sNode){
        var currentPtr:sNode? = rt
        var nextPtr:sNode? = rt.next

        while currentPtr != nil {
            
            if currentPtr?.value == nextPtr?.value{
                //Skip until repeated elements continues
            }else{
                currentPtr?.next = nextPtr
                currentPtr = currentPtr?.next
            }
            nextPtr = nextPtr?.next
        }
    }
    
    /*
     Delete All the duplicates from given Sorted List.
     Input: 1->2->3->3->4->4->5
     Output: 1->2->5
     */
    func deleteDuplicates(_ head: sNode?) -> sNode? {

        return head
    }

    
    final func containsElementOrNot(val:Int)->Bool{
        var status:Bool = false
        var tmpPtr:sNode? = head

        while tmpPtr != nil {
            if tmpPtr?.value == val{
                status = true
                break
            }
            tmpPtr = tmpPtr?.next
        }
        return status
    }
    
    
    final func midPointIs()->Int{
        var mid = 1
        var firstPtr:sNode? = head
        var secondPtr:sNode? = head
        
        //when second pointer will reach end, first pointer will be on mid point
        while secondPtr?.next != nil {
            mid += 1
            firstPtr = firstPtr?.next  //Move 1 step
            secondPtr = secondPtr?.next?.next //move 2 step
        }
        return mid
    }
    
    
    
    final func moveLastNodeToFront(){
        var tmpPtr:sNode? = head
        var anotherPtr:sNode? = head?.next
        
        while anotherPtr?.next != nil {
            tmpPtr = tmpPtr?.next
            anotherPtr = anotherPtr?.next
        }
        
        tmpPtr?.next = nil
        
        if anotherPtr != nil{ //In case of only one element anotherPtr is nil
            anotherPtr?.next = head
            head = anotherPtr
        }
    }
    
    final func flattenTheGivenLinkedList(){
        
    }
    
    final func add1ToNumberRepresentedAsLinkedList(){
        
    }
    
    final func deleteAllElementsWhoseSumIsZero(){
        
    }
    
    final func removeLoopfromGivenLinkedListIfAny(){
        
    }
    
    final func checkIfListIsPalindrome(){
        
    }
    
    final func reverseAlternatekNodes(){
        
    }
    
    final func deleteLastOccurenceOfGivenElement(){
        
    }
    
    final func rotateLinkedListBy(k:Int,clockwise:Bool){
        
    }
    
    final func deleteNNodesAfterMNodes(n:Int,m:Int){
        
    }
    
    final func mergeTwoLinkedListsAtAlternatePositions(list1:sNode?, list2:sNode?){
        
    }
    
    final func mergeSortInLinkedList(){
        
    }
    
    /*
     To delete a node (except the tail) in a singly linked list,
     given only access to that node.
     */
    final func deleteGivenNode(nd:sNode){
        if let nxtValue = nd.next?.value{
            nd.value = nxtValue
            nd.next = nd.next?.next
        }
    }
}

extension SingleLinkedList {
    /*
     Possible Solutions :
     1. Marking visited Nodes - By storing extra info in Node Time O(N)
     2. Using Hash Map or Dictionary to store visited nodes and
     if in traversal some node is already in Hash Map means Loop Time O(N) Space O(N)
     3. Floyd Cycle Finding Algorithm - Use of two pointers Time O(N) Space O(1)
     
     P.S. Consider elements of Linked List are distinct
     */
    final func containsLoop()->(Bool,Int?){
        var status:Bool = false
        var value:Int?
        var slowPtr:sNode? = head
        var fastPtr:sNode? = head
        
        while slowPtr != nil {
            if slowPtr?.value == fastPtr?.value{
                status = true
                value = slowPtr?.value
                break
            }
            slowPtr = slowPtr?.next
            fastPtr = fastPtr?.next?.next
        }
        return (status,value)
    }
    
    private final func getFirstNodeWithValue(val:Int)->sNode?{
        var tmpPtr:sNode? = head
        while tmpPtr != nil {
            if tmpPtr?.value == val {
                return tmpPtr
            }
            tmpPtr = tmpPtr?.next
        }
        return nil
    }
    
    final func createLinkedListWithLoop(value:Int){
        let node = getFirstNodeWithValue(val:value)
        
        var tmpPtr:sNode? = head
        while tmpPtr?.next != nil {
            tmpPtr = tmpPtr?.next
        }
        tmpPtr?.next = node
    }
    
    final func removeLoopIfAny(){
        
        //Get Where Does Both Slow and Fast pointers first met in given LinkedList
        let ifAny = containsLoop()
        
        if let firstMetAt = ifAny.1, ifAny.0 {
            
            //Count Nodes upto first met at
            var tmpPtr:sNode? = head
            var countUptoFirstMet:Int = 0
            while tmpPtr?.value == firstMetAt{
                countUptoFirstMet += 1
                tmpPtr = tmpPtr?.next
            }
            
            //Count total Nodes in the cycle By using slowPtr from countUptoFirstMet
            let node = getFirstNodeWithValue(val: firstMetAt)
            tmpPtr = node?.next
            var nodesInCycle = 1
            while tmpPtr?.value != firstMetAt{
                nodesInCycle += 1
            }
            
            //Point At which cycle Exists = countUptoFirstMet - nodesInCycle
            //let pointAtWhichCycleExists = countUptoFirstMet - countUptoFirstMet
            
            //For Second visit of element at position pointAtWhichCycleExists Remove the next link
            
        }else{ //No Loop
            return
        }
    }
    
    func removeNthFromEnd(_ head: sNode?, _ n: Int) -> sNode? {
        var p1:sNode? = head
        var p2:sNode? = head
        var p2Prev:sNode? = nil
        var count:Int = 1
        
        while(p1 != nil){
            if count > n {
                p2Prev = p2
                p2 = p2?.next
            }
            p1 = p1?.next
            count += 1
        }
        if p2Prev == nil{ //Means Node we are trying to delete first Node as given n will always be valid
            return head?.next
        }else{
            p2Prev?.next =  p2?.next
        }
        return head
    }
}

extension SingleLinkedList{
    
    /*
     Given a singly linked list, group all odd nodes together followed by the even nodes.
     Please note here we are talking about the node number and not the value in the nodes.
     */
    func oddEvenList(root:sNode?){
        var oddPtr:sNode? = root
        var evenPtr:sNode? = root?.next
        let evenPtrRoot:sNode? = evenPtr
        
        while evenPtr?.next != nil {
            
            oddPtr?.next = evenPtr?.next
            oddPtr = oddPtr?.next
            
            evenPtr?.next = oddPtr?.next
            evenPtr = evenPtr?.next
        }
        oddPtr?.next = evenPtrRoot
    }
}

extension SingleLinkedList{
    
    func palindromeLinkedList(){
        
    }
}

extension SingleLinkedList{

    func mergeTwoLists(_ l1: sNode?, _ l2: sNode?) -> sNode? {
        if l1 == nil{
            return l2
        }
        if l2 == nil{
            return l1
        }
        
        var l1Tmp:sNode? = l1
        var l1Prev:sNode? = nil
        var l2Tmp:sNode? = l2
        
        while l1Tmp != nil && l2Tmp != nil {
            if let l1Val = l1Tmp?.value,  let l2Val = l2Tmp?.value {
                if l1Val < l2Val {
                    l1Prev = l1Tmp
                    l1Tmp = l1Tmp?.next
                }else if l1Val > l2Val {
                    if l1Prev == nil{
                        l1Prev = l2Tmp
                    }else{
                        l1Prev?.next = l2Tmp
                    }
                    let oldL2TmpNxt = l2Tmp?.next
                    l2Tmp = oldL2TmpNxt
                    l1Prev?.next = l1Tmp
                    l1Prev = l1Prev?.next
                }else if l1Val == l2Val{
                    l1Tmp = l1Tmp?.next
                    l2Tmp?.next = l1Tmp
                }
            }
        }
        l1Prev?.next = l2Tmp
        return l1
    }
}
