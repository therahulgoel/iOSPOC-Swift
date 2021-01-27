//
//  BinarySearchTreeTests.swift
//  iOSPOC
//
//  Created by Rahul Goel on 28/04/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final class BinarySearchTreeTests{
    
    final class func testsearchNode(){
        let bst:BinarySearchTree = BinarySearchTree()
        bst.testTreeCreation()
        let result1 = bst.searchNode(node: bst.root, value: 5)
        let result2 = bst.searchNode(node: bst.root, value: 15)
        let result3 = bst.searchNode(node: nil, value: 15)
        bst.insertValue(node: bst.root, value: 56)
        bst.insertValue(node: bst.root, value: 100)

    }
    
    final class func deleteValue(){
        let bst:BinarySearchTree = BinarySearchTree()
        bst.testTreeCreation()
        let a = bst.deleteValue(node: bst.root, value: 2)

    }
    
}
