
//
//  BinaryTreeTests.swift
//  iOSPOC
//
//  Created by Rahul Goel on 06/03/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final class BinaryTreeTests {
    
    final class func testTestTreeCreationWithTreeTraversal(){
        let bTree:BinaryTree = BinaryTree()
        bTree.testTreeCreation()
        bTree.preOrder(node: bTree.root)
        bTree.inOrder(node: bTree.root)
        bTree.postOrder(node: bTree.root)
        bTree.levelOrderTraversal(node: bTree.root)
        bTree.zigZagOrderTraversal(node: bTree.root)
        bTree.getEveryLevelInfoFor(node: bTree.root)
         _ = bTree.numberOfLeafNodes(node: bTree.root)
        _ = bTree.numberOfInternalNodes(node: bTree.root)
        bTree.setsampleExpression()
        bTree.evaluateExpressionTree(node: bTree.rootStr)
        bTree.printLeftView(root: bTree.root)
        bTree.printRightView(root: bTree.root)
        _ = bTree.heightOrMaxDepthOfGivenNode(root: bTree.root)
        //bTree.storeChildrenSumInParentNode(root: bTree.root)
        //bTree.calculateHorizontalDistanceFromRoot(root:bTree.root,0)
        //bTree.verticalOrderTraversal(root: bTree.root)
        //bTree.printTopView(root: bTree.root)
        //let a = bTree.search(key: 41, root: bTree.root)
        
    }
    
    class func levelOfgivenKey(){
        let bTree:BinaryTree = BinaryTree()
        bTree.testTreeCreation()
        let result1 = bTree.levelOfgivenKey(1, root: bTree.root, level: 0)
        let result2 = bTree.levelOfgivenKey(3, root: bTree.root, level: 0)
        let result3 = bTree.levelOfgivenKey(6, root: bTree.root, level: 0)
        let result4 = bTree.levelOfgivenKey(100, root: bTree.root, level: 0)

    }
    
    class func allBinaryTreePaths(){
        let bTree:BinaryTree = BinaryTree()
        bTree.testTreeCreation()
        print(bTree.allBinaryTreePaths())
    }
    
}
