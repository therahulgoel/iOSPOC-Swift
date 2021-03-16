//
//  DesignCircularDeque.swift
//  iOSPOC
//
//  Created by Rahul Goel on 09/02/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/design-circular-deque/
class CircularDeque {
    var arr:[Int] = [Int]()
    var front = -1
    var rear = 0
    var size = 0
    
    init(_ k: Int) {
        size = k
        arr = Array(repeating: 0, count: k)
    }
    
    func insertFront(_ value: Int) -> Bool {
        if isFull(){
           return false
        }
        if isEmpty(){
            front = 0
            rear = 0
        }else if front == 0{ //First Position
            front = size - 1
        }else{
            front = front - 1
        }
        arr[front] = value
        return true
    }
    
    func deleteFront() -> Bool {
        if isEmpty(){
            return false
        }
        if front == rear{ //Single Element
            front = -1
            rear = -1
        }else{
            if front == size - 1{ //Full
                front = 0
            }else{
                front += 1
            }
        }
        return true
    }
    
    func isEmpty() -> Bool {
        return (front == -1)
    }
    
    func isFull() -> Bool {
        return ((front == 0 && rear == size - 1) || front == rear + 1)
    }
}

extension CircularDeque{
    func insertLast(_ value: Int) -> Bool {
        if isFull(){
           return false
        }
        if front == -1{
            front = 0
            rear = 0
        }else if rear == size - 1{ //Last Position
            rear = 0
        }else{
            rear = rear + 1
        }
        arr[rear] = value
        return true
    }
    
    func deleteLast() -> Bool {
        if isEmpty(){
            return false
        }
        if front == rear{ //Single Element
            front = -1
            rear = -1
        }else if rear == 0{
            rear = size - 1
        }else{
            rear = rear - 1
        }
        return true
    }
    
    func getFront() -> Int {
        if isEmpty(){
            return -1
        }
        return arr[front]
    }
    
    func getRear() -> Int {
        if isEmpty() || rear < 0{
            return -1
        }
        return arr[rear]
    }
}

