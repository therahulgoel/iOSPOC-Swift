//
//  BinarySearchTree.swift
//  iOSPOC
//
//  Created by Rahul Goel on 28/04/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final class bstNode{
    var val:Int
    var left:bstNode?
    var right:bstNode?
    
    init(value:Int,pv:bstNode?,nx:bstNode?) {
        val = value
        left = pv
        right = nx
    }
}

final class BinarySearchTree{
    
    var root:bstNode?
    
    init(){
        
    }
    
    final class func newNode(value:Int)->bstNode{
        return bstNode(value: value, pv: nil, nx: nil)
    }
    
    /*
        Test Binary Search Tree Creation :
        5
     /    \
     3     7
    /  \   /  \
   2   4  6   8
     
     */
    
    final func testTreeCreation(){
        //Level 0
        root = BinarySearchTree.newNode(value:5)
        
        //Level 1
        root?.left = BinarySearchTree.newNode(value: 3)
        root?.right = BinarySearchTree.newNode(value: 7)
        
        //Level 2
        root?.left?.left = BinarySearchTree.newNode(value: 2)
        root?.left?.right = BinarySearchTree.newNode(value: 4)
        root?.right?.left = BinarySearchTree.newNode(value: 6)
        root?.right?.right = BinarySearchTree.newNode(value: 8)
    }
    
    /*
     To search a value in already given Binary Search Tree
     Returns nil if not found
     else Returns Node
     */
    final func searchNode(node:bstNode?,value:Int)->bstNode?{
        if let node = node, node.val == value{
            return node
        }else{
            if let left = node?.left, value < left.val {
                return searchNode(node:left, value:value)
            }
            if let right = node?.right, value > right.val{
                return searchNode(node:right, value:value)
            }
        }
        return nil
    }
    
    /*
        To Insert  value in already given BST
     */
    final func insertValue(node:bstNode?,value:Int)->bstNode?{
        
        if node == nil{
            return BinarySearchTree.newNode(value: value)
        }else{
            if let node = node {
                if value < node.val{
                    node.left =  insertValue(node:node.left ,value:value)
                }else{
                    node.right = insertValue(node:node.right ,value:value)
                }
            }
        }
        return node
    }
    
    /*
        To delete a value from already given BST
        //1. Search the Node first
        //2. If Found Delete the node :
            Case a. If node has no children - Delete it
            Case b. If node has 1 children - left or right - connect it with node parent
            Case c. if node has 2 children - connect (inorder successor lowest in RST ) with node parent
     */
    final func deleteValue(node:bstNode?, value:Int){
        
    }

}
