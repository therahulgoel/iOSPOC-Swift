//
//  BinaryTree.swift
//  iOSPOC
//
//  Created by Rahul Goel on 06/03/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

//Node with Integer Data Part
final class btNode{
    var val:Int
    var prev:btNode?
    var next:btNode?
    var sibling:btNode?
    
    //Optional Properties of Tree Node can be used if required
    var horizontalDistanceFromRoot:Int?
    
    init(value:Int,pr:btNode?,nx:btNode?) {
        val = value
        prev = pr
        next = nx
    }
}

//Node with String Data Part
final class btStringNode{
    var val:String
    var prev:btStringNode?
    var next:btStringNode?
    
    init(value:String,pr:btStringNode?,nx:btStringNode?) {
        val = value
        prev = pr
        next = nx
    }
}

final class BinaryTree{
    
    //Contained Value :Integer
    var root:btNode?
    var inOrder:[Int] = [Int]()
    var preOrder:[Int] = [Int]()
    var postOrder:[Int] = [Int]()
    var levelOrder:[Int] = [Int]()
    var levelInfoDict:[String:[Int]] = [String:[Int]]()
    var zigZagOrder:[Int] = [Int]()
    var verticalOrder:[Int:[Int]] = [Int:[Int]]()
    
    //Various Views for Binary Tree
    var leftView:[Int] = [Int]()
    var rightView:[Int] = [Int]()
    var topView:[Int] = [Int]()
    var bottomView:[Int] = [Int]()
    
    //Contained Value :String
    var rootStr:btStringNode?

    
    init() {
    }
    
    final class func createNode(val:Int)->btNode{
        return btNode(value: val, pr: nil, nx: nil)
    }
    
    final class func createStringNode(val:String)->btStringNode{
        return btStringNode(value: val, pr: nil, nx: nil)
    }

    
    //Creating Binray Tree from given array of elements
    init(arr:[Int]) {
        var index = 0
        
        while index < arr.count {
            if index == 0{
                root = BinaryTree.createNode(val: arr[index])
            }else{
                //TODO :
            }
            index += 1
        }
    }
    
    /* Sample Tree For Testing
       1
     /   \
     2    3
    /  \  / \
   4   5 6   7
     
     */
    final func testTreeCreation(){
        root = BinaryTree.createNode(val: 1)
        root?.prev = BinaryTree.createNode(val: 2)
        root?.next = BinaryTree.createNode(val: 3)
        root?.prev?.prev = BinaryTree.createNode(val: 4)
        root?.prev?.next = BinaryTree.createNode(val: 5)
        root?.next?.prev = BinaryTree.createNode(val: 6)
        root?.next?.next = BinaryTree.createNode(val: 7)
    }
    
}

//Tree : Traversals
extension BinaryTree{
    
    //DFT : Depth First Traversal
    final func preOrder(node:btNode?){
        if node == nil{
            return
        }else{
            if let value = node?.val{
                preOrder.append(value)
            }
            preOrder(node:node?.prev)
            preOrder(node:node?.next)
        }
    }
    
    //DFT : Depth First Traversal
    final func inOrder(node:btNode?){
        if node == nil{
            return
        }else{
            inOrder(node: node?.prev)
            if let value = node?.val{
                inOrder.append(value)
            }
            inOrder(node:node?.next)
        }
    }
    
    //DFT : Depth First Traversal
    final func postOrder(node:btNode?){
        if node == nil{
            return
        }else{
            postOrder(node: node?.prev)
            postOrder(node: node?.next)
            if let value = node?.val{
                postOrder.append(value)
            }
        }
    }
    
    //BFT : Breadth First Traversal
    final func levelOrderTraversal(node:btNode?){
        if let node = node{
            var queue:[btNode] = [btNode]()
            queue.append(node)
            while !queue.isEmpty{
                let first = queue.removeFirst()
                levelOrder.append(first.val)
                //To add Both children in Queue
                if let prev = first.prev{
                    queue.append(prev)
                }
                if let next = first.next{
                    queue.append(next)
                }
            }
        }
    }

}

extension BinaryTree{
    
    final func pathFromRootTo(_ k:Int){
        
    }
    
    //Check if given Binary Tree is Binary Search Tree or not
    final func isGivenTreeBST(node:btNode?)->Bool{
        let status:Bool = false
        
        return status
    }
    
    /*
     Traversal of Binary Tree in Zig Zig Order or Spiral Level Order Traversal
     */
    final func zigZagOrderTraversal(node:btNode?){
        if let node = node {
            var parentQueue:[btNode] = [btNode]()
            var childQueue:[btNode] = [btNode]()
            var rightToLeft = true
            
            //Root Node
            parentQueue.append(node)
            zigZagOrder.append(node.val)

            while !parentQueue.isEmpty{
                
                let first = parentQueue.removeFirst()
                if let prev = first.prev{
                    childQueue.append(prev)
                }
                if let next = first.next{
                    childQueue.append(next)
                }
                
                if parentQueue.isEmpty{
                    //Print Child Queue Based on rightToLeft status
                    printValues(arr: childQueue, fromEnd: rightToLeft)
                    rightToLeft = !rightToLeft
                    parentQueue.append(contentsOf: childQueue)
                    childQueue.removeAll()
                }
            }
        }
    }
    
    private func printValues(arr:[btNode],fromEnd:Bool){
        if !fromEnd {
            for ele in arr{
                zigZagOrder.append(ele.val)
            }
        }else{
            for ele in arr.reversed(){
                zigZagOrder.append(ele.val)
            }
        }
    }


    /* For a given Tree
     Return Dictionary with key :   Respective Level Number
                            value : Respective Level Node's Values
     */
    final func getEveryLevelInfoFor(node:btNode?){
        if let node = node {
            var parentQueue:[btNode] = [btNode]()
            var childQueue:[btNode] = [btNode]()
            var rightToLeft = true
            var level = 0
            
            //Root Node
            parentQueue.append(node)
            levelInfoDict["Level-\(level)"] = [node.val]
            
            while !parentQueue.isEmpty{
                
                let first = parentQueue.removeFirst()
                if let prev = first.prev{
                    childQueue.append(prev)
                }
                if let next = first.next{
                    childQueue.append(next)
                }
                
                if parentQueue.isEmpty{
                    level += 1
                    //Access Child Queue Based on rightToLeft status
                    storeinfo(arr: childQueue, fromEnd: rightToLeft,level:level)
                    rightToLeft = !rightToLeft
                    parentQueue.append(contentsOf: childQueue)
                    childQueue.removeAll()
                }
            }
        }
    }
    
    private func storeinfo(arr:[btNode],fromEnd:Bool,level:Int){
        var tmp:[Int] = [Int]()
        
        if !fromEnd {
            for ele in arr{
                tmp.append(ele.val)
            }
        }else{
            for ele in arr.reversed(){
                tmp.append(ele.val)
            }
        }
        
        //Store the Level Info
        levelInfoDict["Level-\(level)"] = tmp
    }
}

extension BinaryTree{
    
    final func morrisTraversalForInOrder(node:btNode?){
    
    }
    
    final func setsampleExpression(){
        //Root Level 0
        rootStr = BinaryTree.createStringNode(val: "+")
        
        //Level 1
        rootStr?.prev = BinaryTree.createStringNode(val: "*")
        rootStr?.next = BinaryTree.createStringNode(val: "-")
        
        //Level 2
        rootStr?.prev?.prev = BinaryTree.createStringNode(val: "5")
        rootStr?.prev?.next = BinaryTree.createStringNode(val: "4")
        rootStr?.next?.prev = BinaryTree.createStringNode(val: "100")
        rootStr?.next?.next = BinaryTree.createStringNode(val: "/")
        
        //Level 3
        rootStr?.next?.next?.prev = BinaryTree.createStringNode(val: "20")
        rootStr?.next?.next?.next = BinaryTree.createStringNode(val: "2")
    }
    
    final func evaluateExpressionTree(node:btStringNode?){
            if node != nil{
                if !checkIfOperator(node:node?.prev) && !checkIfOperator(node: node?.next){
                    node?.val = resultBasedOnOperator(rt: node, node1: node?.prev, node2: node?.next)
                    return
                }else{
                    evaluateExpressionTree(node: node?.prev)
                    evaluateExpressionTree(node: node?.next)
                }
            }
    }
    
    private func checkIfOperator(node:btStringNode?)->Bool{
        if node?.val == "+" || node?.val == "-" || node?.val == "*" || node?.val == "/"{
            return true
        }
        else{
            return false
        }
    }
    
    private func resultBasedOnOperator(rt:btStringNode?, node1:btStringNode?, node2:btStringNode?)->String{
        var result:String = ""
        
        guard let node1 = node1, let node2  = node2, let rt = rt else {
            return ""
        }
        switch rt.val {
        case "+":
            result = String((Int(node1.val) ?? 0) + (Int(node2.val) ?? 0))
        case "-":
            result = String((Int(node1.val) ?? 0) - (Int(node2.val) ?? 0))
        case "*":
            result = String((Int(node1.val) ?? 0) * (Int(node2.val) ?? 0))
        case "/":
            result = String((Int(node1.val) ?? 0) / (Int(node2.val) ?? 0))
        default:
            result = ""
        }
        
        return result
    }
    
    final func createExpressionTreeFromGivenExpression(node:btNode?){
    }
}

extension BinaryTree{

    //Diameter or Width of Binary Tree : Number of Nodes on the Longest Path between any two leave nodes in it.
    //Diameter may or may not pass through root node
    //Diameter of binary tree = max(leftHeight + rightHeight + 1) for each node
    final func diameterOfBinaryTree(root:btNode?)->Int{
        if let _ = root{
        }
        return 0
    }
}

extension BinaryTree{
    
    final func printLeftView(root:btNode?){
        if let root = root{
            var parentQueue:[btNode] = [btNode]()
            parentQueue.append(root)
            var isFirstParent:Bool = true

            var childQueue:[btNode] = [btNode]()
            
            while !parentQueue.isEmpty{
                //To get the parent
                let first = parentQueue.removeFirst()
                
                //only add first element of every level of tree
                if isFirstParent{
                    leftView.append(first.val)
                    isFirstParent = false
                }
                
                //To add all the children in queue
                if let left = first.prev{
                    childQueue.append(left)
                }
                if let right = first.next{
                    childQueue.append(right)
                }
                
                if parentQueue.isEmpty{
                    parentQueue.append(contentsOf: childQueue)
                    isFirstParent = true
                    childQueue.removeAll()
                }
            }
        }
    }
    
    final func printRightView(root:btNode?){
        if let root = root{
            var parentQueue:[btNode] = [btNode]()
            parentQueue.append(root)
            var childQueue:[btNode] = [btNode]()
            while !parentQueue.isEmpty{
                //To get the parent
                let count = parentQueue.count
                let first = parentQueue.removeFirst()
                //Only add last element of every level of Binary tree
                if 0 == count-1{
                    rightView.append(first.val)
                }
                //To add all the children in queue
                if let left = first.prev{
                    childQueue.append(left)
                }
                if let right = first.next{
                    childQueue.append(right)
                }
                if parentQueue.isEmpty{
                    parentQueue.append(contentsOf: childQueue)
                    childQueue.removeAll()
                }
            }
        }
    }
    
    final func printTopView(root:btNode?){
        //1. Update horizontalDistanceFromRoot for every given Node
        calculateHorizontalDistanceFromRoot(root: root, 0)
        //2. Now for every horizontalDistanceFromRoot store only the top item in vertical Order
        storeFirstElementInVerticalOrder(root: root)
    }
    
    final private func storeFirstElementInVerticalOrder(root:btNode?){
        if let root = root{
            //Store vertical Order info in Map
            if let hDistance = root.horizontalDistanceFromRoot{
                if verticalOrder[hDistance] != nil{
                    //Dont store other elements just the first
                }else{
                    verticalOrder[hDistance] = [root.val]
                    topView.append(root.val)
                }
            }
            storeFirstElementInVerticalOrder(root: root.prev)
            storeFirstElementInVerticalOrder(root: root.next)
        }else{
            return
        }
    }

    //Given a Binary Tree, we need to print the bottom view from left to right.
    //A node x is there in output if x is the bottommost node at its horizontal distance.
    final func printBottomView(root:btNode?){
        
        //1. Update horizontalDistanceFromRoot for every given Node
        calculateHorizontalDistanceFromRoot(root: root, 0)
        
        //2. Now for every horizontalDistanceFromRoot store only the Last item in vertical Order
        storeLastElementInVerticalOrder(root: root)
    }
    
    final private func storeLastElementInVerticalOrder(root:btNode?){
        if let root = root{
            //Store vertical Order info in Map
            if let hDistance = root.horizontalDistanceFromRoot{
                if verticalOrder[hDistance] != nil{
                    //Dont store other elements just the first
                }else{
                    verticalOrder[hDistance] = [root.val]
                    topView.append(root.val)
                }
                storeLastElementInVerticalOrder(root: root.prev)
                storeLastElementInVerticalOrder(root: root.next)
            }
        }else{
            return
        }
    }
}

extension BinaryTree{
    /*
     Solution 1 :
     
     Solution 2 :
     */
    final func lowestCommonAncestor(_ root:btNode? ,_ n1:Int, _ n2:Int){
    }
}

extension BinaryTree{
    final func levelOfgivenKey(_ k:Int, root:btNode?, level:Int)->(found:Bool, level:Int){
        if let root = root{
            if root.val == k{
                return (true,level)
            }
            let leftFound = levelOfgivenKey(k, root: root.prev, level: level+1)
            let rightFound = levelOfgivenKey(k, root: root.next, level: level+1)
            
            if leftFound.found || rightFound.found {
                return (true,level+1)
            }else{
                return (false,-1)
            }
        }else{
            return (false,-1)
        }
    }
}

extension BinaryTree{
    final func convertGivenBinaryTreeToDoubleLinkedList(root:btNode?){
    }
}

extension BinaryTree{
    
    //Height with only root node is zero
    //Height or Maximum Depth = Level + 1
    //Height of Binary Tree = Height of root node
    final func heightOrMaxDepthOfGivenNode(root:btNode?)->Int{
            if let root = root{
                let leftDepth = heightOrMaxDepthOfGivenNode(root: root.prev)
                let rightDepth = heightOrMaxDepthOfGivenNode(root: root.next)
                return max(leftDepth, rightDepth) + 1
            }else{
                return 0
            }
    }
    
    final func heightOfBinaryTree(root:btNode)->Int{
        if totalNodes(root: root) == 0{
            return 0
        }else{
            return heightOrMaxDepthOfGivenNode(root: root)
        }
    }
    
}

extension BinaryTree{
    
    final func numberOfInternalNodes(node:btNode?)->Int{
        if node == nil{
            return 0
        }else{
            if node?.prev == nil && node?.next == nil {
                return 0
            }else{
                return 1 + numberOfInternalNodes(node:node?.prev) + numberOfInternalNodes(node:node?.next)
            }
        }
    }
    
    final func numberOfLeafNodes(node:btNode?)->Int{
        if node?.prev == nil && node?.next == nil{
            return 1
        }else{
            return numberOfLeafNodes(node:node?.prev) + numberOfLeafNodes(node:node?.next)
        }
    }
    
    final func totalNodes(root:btNode?)->Int{
        if root == nil{
            return 0
        }else{
            return numberOfLeafNodes(node: root) + numberOfInternalNodes(node:root)
        }
    }
}

extension BinaryTree{

    /*
     Given a Binary Tree where each node has positive and negative values.
     Convert this to a tree where each node contains the sum of the left and right sub trees in the original tree.
     The values of leaf nodes are changed to 0.
     */
    final func storeChildrenSumInParentNode(root:btNode?)->Int{
        if let root = root{
            let oldValue = root.val
            root.val = storeChildrenSumInParentNode(root: root.prev) + storeChildrenSumInParentNode(root: root.next)
            return oldValue + root.val
        }else{
            return 0
        }
    }
    
}

extension BinaryTree{
    
    final func verticalOrderTraversal(root:btNode?){
        //1. Update horizontalDistanceFromRoot for every given Node
        calculateHorizontalDistanceFromRoot(root: root, 0)
        
        //2. Now store with same horizontalDistanceFromRoot in same group by
        //traversing the complete Binary Tree
        segregateNodesBasedOnHorizontalDistance(root: root)
    }
    
    final private func segregateNodesBasedOnHorizontalDistance(root:btNode?){
        if let root = root{
            //Store vertical Order info in Map
            if let hDistance = root.horizontalDistanceFromRoot{
                if verticalOrder[hDistance] != nil{
                    verticalOrder[hDistance]?.append(root.val)
                }else{
                    verticalOrder[hDistance] = [root.val]
                }
            }
            segregateNodesBasedOnHorizontalDistance(root: root.prev)
            segregateNodesBasedOnHorizontalDistance(root: root.next)
        }else{
            return
        }
    }
}

extension BinaryTree{
    
    final func calculateHorizontalDistanceFromRoot(root:btNode?, _ distance:Int){
        if let root = root{
         root.horizontalDistanceFromRoot = distance
        //For Left Traversal -1
        calculateHorizontalDistanceFromRoot(root: root.prev,(root.horizontalDistanceFromRoot ?? 0) - 1)
        //For Left Traversal +1
        calculateHorizontalDistanceFromRoot(root: root.next,(root.horizontalDistanceFromRoot ?? 0) + 1)
        //Update Nothing for moving back to parent
        }else{
            return
        }
    }
}

extension BinaryTree{
    /*
     Two nodes are cousins of each other if they are at same level
     and have different parents.
     */
    final func checkIfTwoNodesAreCousins(val1:Int, val2:Int){
        
    }
}

extension BinaryTree{
    
    final func search(key:Int, root:btNode?)->Bool{
        if let root = root{
            if root.val == key{
                return true
            }
            let leftFound = search(key: key, root: root.prev)
            let rightFound = search(key: key, root: root.next)
            return leftFound || rightFound
        }else{
            return false
        }
    }
    
}

extension BinaryTree{
    
    //Given a binary tree, return all root-to-leaf paths.
    final func allBinaryTreePaths()->[String]{
        var arr:[String] = [String]()
        if let value = root?.val{
            allBinaryTreePathsInternal("\(value)", root, arr: &arr)
        }
        return arr
    }
    
    private final func allBinaryTreePathsInternal(_ str:String, _ root:btNode?, arr: inout [String]){
        if root?.prev == nil && root?.next == nil{
            arr.append(str)
            return
        }else{
            if let prev = root?.prev?.val{
                allBinaryTreePathsInternal(str + "\(prev)", root?.prev, arr: &arr)
            }
            if let nxt = root?.next?.val{
                allBinaryTreePathsInternal(str + "\(nxt)", root?.next, arr: &arr)
            }
        }
    }
}

extension BinaryTree{
    /*
     Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that
     adding up all the values along the path equals the given sum.
     */
    final func hasPathSum(sum:Int)->Bool{
        if let value = root?.val{
           return pathSumInternal(value, root,sum)
        }
        return false
    }
    
    final func pathSumInternal(_ val:Int, _ root:btNode?, _ sum:Int)->Bool{
        if root?.prev == nil && root?.next == nil{
            return val == sum ? true : false
        }else{
            var left:Bool = false
            var right:Bool = false
            if let prev = root?.prev?.val{
                left = pathSumInternal(val + prev, root?.prev, sum)
            }
            if let nxt = root?.next?.val{
                right = pathSumInternal(val + nxt, root?.next, sum)
            }
            return left || right
        }
    }
}

extension BinaryTree{
    
    //Invert or Mirror Image of given Binary Tree
    func invertTree(_ root: btNode?) -> btNode? {
        invertTreeInternal(root)
        return root
    }
    
    final func invertTreeInternal(_ root: btNode?){
        if root == nil{
            return
        }else{
            invertTreeInternal(root?.prev)
            invertTreeInternal(root?.next)
            //Swap left and Right Child of every node
            let oldPrev = root?.prev
            root?.prev = root?.next
            root?.next = oldPrev
        }
    }
    
}

extension BinaryTree{
    
    //To Return all root-to-leaf paths equals given sum
    func allPathsWithSum(_ root: btNode?, _ sum: Int) -> [[Int]] {
        var arr:[[Int]] = [[Int]]()
        if let value = root?.val{
            allPathsWithSumInternal([value], root, arr: &arr, sum, value)
        }
        return arr
    }
    
    private final func allPathsWithSumInternal(_ values:[Int], _ root:btNode?, arr: inout [[Int]], _ sum:Int,_ total:Int){
        if root?.prev == nil && root?.next == nil{
            if total == sum{
                arr.append(values)
            }
            return
        }else{
            if let prev = root?.prev?.val{
                var arrVal:[Int] = Array(values)
                arrVal.append(prev)
                allPathsWithSumInternal(arrVal, root?.prev, arr: &arr, sum, total + prev)
            }
            if let nxt = root?.next?.val{
                var arrVal:[Int] = Array(values)
                arrVal.append(nxt)
                allPathsWithSumInternal(arrVal, root?.next, arr: &arr, sum, total + nxt)
            }
        }
    }

}

extension BinaryTree{

    //Find the number of paths/sub-paths that sum to a given value.
    //(Not necesserly root-to-leaf but should be top to down)
    
    func totalPathsEqualsSum(_ root: btNode?, _ sum: Int) -> Int {
        var totalPaths = 0
        if let value = root?.val{
            totalPathsEqualsSumInternal(root, &totalPaths, sum, value)
        }
        return totalPaths
    }
    
    private final func totalPathsEqualsSumInternal(_ root:btNode?, _ totalPaths: inout Int, _ sum:Int,_ total:Int){
        if root == nil{
            return
        }else{
            if let prev = root?.prev?.val{
                totalPathsEqualsSumInternal(root?.prev, &totalPaths, sum, total + prev)
            }
            if let nxt = root?.next?.val{
                totalPathsEqualsSumInternal(root?.next, &totalPaths, sum, total + nxt)
            }
        }
    }

}

extension BinaryTree{

    //Check if two nodes are cosuins or not, all nodes has distinct values in given BTree
    func isCousins(_ root: btNode?, _ x: Int, _ y: Int) -> Bool {
        
        return false
    }
    
    final func isCousinInternal(_ root:btNode?, _ x: Int, _ y: Int){
        if root == nil{
            return
        }else{
            if let value = root?.val{
                if value == x{
                    
                }
            }
            isCousinInternal(root?.prev, x, y)
            isCousinInternal(root?.next, x, y)
        }
    }
}

extension BinaryTree{
    
    /*Given a non-empty binary tree, return the average value of the nodes on
    each level in the form of an array.
    */
    func averageOfLevels(_ root: btNode?) -> [Double] {
         var levelInfo:[Double] = [Double]()
         if let node = root{
            var parentQueue:[btNode] = [btNode]()
            var childQueue:[btNode] = [btNode]()
            let rightToLeft = false
            
            //Root Node
            parentQueue.append(node)
            levelInfo.append(Double(node.val))
            
            while !parentQueue.isEmpty {
                let first = parentQueue.removeFirst()
                if let prev = first.prev{
                    childQueue.append(prev)
                }
                if let next = first.next{
                    childQueue.append(next)
                }
                if parentQueue.isEmpty{
                    //Access Child Queue Based on rightToLeft status
                    if !childQueue.isEmpty{
                        let levelData = storeinfo(arr: childQueue, fromEnd: rightToLeft)
                        levelInfo.append(levelData)
                    }
                    parentQueue.append(contentsOf: childQueue)
                    childQueue.removeAll()
                }
            }
        }
        return levelInfo
    }
        private func storeinfo(arr:[btNode],fromEnd:Bool)->Double{
        var sum:Double = 0
        if !fromEnd {
            for ele in arr{
                sum = sum + Double(ele.val)
            }
        }
        return sum/Double(arr.count)
    }


}

extension BinaryTree{
    
    /*
     Given a binary tree, return the bottom-up level order traversal of its nodes' values.
     (ie, from left to right, level by level from leaf to root).
     */
    func levelOrderBottom(_ root: btNode?) -> [[Int]] {
        var levelInfo:[[Int]] = [[Int]]()
        if let node = root{
            var parentQueue:[btNode] = [btNode]()
            var childQueue:[btNode] = [btNode]()
            let rightToLeft = false
            
            //Root Node
            parentQueue.append(node)
            levelInfo.append([node.val])
            
            while !parentQueue.isEmpty{
                let first = parentQueue.removeFirst()
                if let prev = first.prev{
                    childQueue.append(prev)
                }
                if let next = first.next{
                    childQueue.append(next)
                }
                if parentQueue.isEmpty{
                    //Access Child Queue Based on rightToLeft status
                    let levelData = storeinfo_(arr: childQueue, fromEnd: rightToLeft)
                    if !levelData.isEmpty{
                        levelInfo.append(levelData)
                    }
                    parentQueue.append(contentsOf: childQueue)
                    childQueue.removeAll()
                }
            }
        }
        return levelInfo.reversed()
    }
    
    private func storeinfo_(arr:[btNode],fromEnd:Bool)->[Int]{
        var tmp:[Int] = [Int]()
        if !fromEnd {
            for ele in arr{
                tmp.append(ele.val)
            }
        }else{
            for ele in arr.reversed(){
                tmp.append(ele.val)
            }
        }
        //Store the Level Info
        return tmp
    }

}

extension BinaryTree {
 /*
     Given a binary tree, find its maximum depth.
     The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
     Note: A leaf is a node with no children.
     Time : O(n)
*/
    func maxDepth(_ root: btNode?) -> Int {
        var maxDepth:Int = 1
        if let _ = root?.val{
            maxDepth =  maxDepthInternal(root,maxDepth)
        }else{
            maxDepth = 0
        }
        return maxDepth
    }
    
    func maxDepthInternal(_ rt:btNode?, _ count:Int)->Int{
        if rt?.prev == nil && rt?.next == nil{
            return count
        }else{
            var leftV:Int = 0
            var rightV:Int = 0
            if let _ = rt?.prev?.val{
                leftV = maxDepthInternal(rt?.prev, count + 1)
            }
            if let _ = rt?.next?.val{
                rightV =  maxDepthInternal(rt?.next, count + 1)
            }
            return max(leftV, rightV)
        }
    }
}

extension BinaryTree{
    
    /*
     Given a binary tree, find its minimum depth.
     The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.
     Note: A leaf is a node with no children.
     Time : O(n)
     */
    func minDepth(_ root: btNode?) -> Int {
        var minDepth:Int = 1
        if let _ = root?.val{
            minDepth =  minDepthInternal(root,minDepth)
        }else{
            minDepth = 0
        }
        return minDepth
    }
    
    func minDepthInternal(_ rt:btNode?, _ count:Int)->Int{
        if rt?.prev == nil && rt?.next == nil{
            return count
        }else{
            var leftV:Int = 0
            var rightV:Int = 0
            if let _ = rt?.prev?.val{
                leftV = minDepthInternal(rt?.prev, count + 1)
            }
            if let _ = rt?.next?.val{
                rightV =  minDepthInternal(rt?.next, count + 1)
            }
            //For cases Binary Tree is Left skewed or Right Skewed
            if leftV == 0 {
                return rightV
            }
            if rightV == 0 {
                return leftV
            }
            //Else
            return min(leftV, rightV)
        }
    }
}

extension BinaryTree{
    /*
     Given a binary tree, return the preorder traversal of its nodes' values using iteration.
     Time : O(n)
     */
    func preorderTraversal(_ root: btNode?) -> [Int] {
        var stack:[btNode] = [btNode]()
        var output:[Int] = [Int]()
        
        if let rt = root{
            stack.append(rt)
            
            while !stack.isEmpty{
                let top = stack.removeLast()
                output.append(top.val)
                
                //Push Right Child First
                if let nxt = top.next {
                    stack.append(nxt)
                }
                //Push Left Child After
                if let prv = top.prev {
                    stack.append(prv)
                }
            }
        }
        return output
    }
}

extension BinaryTree{
    /*
     Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).
     For example, this binary tree [1,2,2,3,4,4,3] is symmetric:
     Time : O(n)
     */
    func isSymmetric(_ root: btNode?) -> Bool {
        var parent:[btNode] = [btNode]()
        var child:[btNode] = [btNode]()
        var isSymmetric:Bool = true
        let dummyValue:Int = -11111 //
        if root == nil{
            return isSymmetric
        }
        parent.append(root!)
        while !parent.isEmpty {
            let node = parent.removeFirst()
            
            if let left = node.prev{
                child.append(left)
            }else{
                if node.val != dummyValue{
                    child.append(btNode(value: dummyValue, pr: nil, nx: nil))
                }
            }
            if let right = node.next{
                child.append(right)
            }else{
                if node.val != dummyValue{
                    child.append(btNode(value: dummyValue, pr: nil, nx: nil))
                }
            }
            if parent.isEmpty{
                //Process Child Queue
                isSymmetric = processLevelInfo(child)
                if isSymmetric == false{
                    break
                }
                parent.append(contentsOf: child)
                child.removeAll()
            }
        }
        return isSymmetric
    }
    
    func processLevelInfo(_ q:[btNode])->Bool{
        var status:Bool = true
        var index:Int = 0
        let length = q.count - 1
        while index < q.count{
            if q[index].val != q[length - index].val{
                status = false
                break
            }
            index += 1
        }
        return status
    }
}

extension BinaryTree{
    /*
     Find the sum of all left leaves in a given binary tree.
     */
    func sumOfLeftLeaves(_ root: btNode?) -> Int {
        if root == nil{
            return 0
        }else{
            var left:Int = 0
            var right:Int = 0
            if let l = root?.prev { //Left
                if l.prev == nil && l.next == nil{ //To Check If Its a Leaf
                    left =  l.val + sumOfLeftLeaves(l)
                }else{
                    left =  sumOfLeftLeaves(l)
                }
            }
            if let r = root?.next{ //Right
                right = sumOfLeftLeaves(r)
            }
            return left + right
        }
    }

}

extension BinaryTree {
    
    /*
     Given the root node of a binary search tree (BST) and a value. You need to find the node in the BST
     that the node's value equals the given value. Return the subtree rooted with that node.
     If such node doesn't exist, you should return NULL.
    */
    func searchBST(_ root: btNode?, _ val: Int) -> btNode? {
        if let rt = root{
            if rt.val == val{
                return rt
            }else if val < rt.val { // Search Left
                return searchBST(rt.prev, val)
            }else{ //Search Right
                return searchBST(rt.next, val)
            }
        }else{
            return nil
        }
    }
}

extension BinaryTree{
    
    /*
     Given two binary trees, write a function to check if they are the same or not.
     Two binary trees are considered the same if they are structurally identical and the nodes have the same value.
     */
    func isSameTree(_ p: btNode?, _ q: btNode?) -> Bool {
        if p == nil && q == nil { //Both are nil
            return true
        }else if (p != nil && q != nil){ //If Link Exists in Both Trees
            var result:Bool = false
            if p!.val == q!.val{ //If Value is also same
                result = true
            }
            return result && isSameTree(p?.prev, q?.prev) && isSameTree(p?.next, q?.next)
        }else{
            return false
        }
    }

}

extension BinaryTree{
    
    //Binary Tree InOrder Traversal : Using Iteration
    func inorderTraversal(_ root: btNode?) -> [Int] {
        var stack:[btNode] = [btNode]()
        var output:[Int] = [Int]()
        var current:btNode?
        
        if let rt = root {
            current = rt
            while !stack.isEmpty || current != nil{
                
                //Reach the Left Most Node
                while current != nil {
                    if let crnt = current{
                        stack.append(crnt)
                        current = crnt.prev
                    }
                }
                
                let item:btNode? = stack.removeLast()
                if let item = item{
                    output.append(item.val)
                }
                //Move to Right SubTree
                current = item?.next
            }
        }
        return output
    }

}

extension BinaryTree{
    
    //Solution : Post Order Using Iteration
    func postorderTraversal(_ root: btNode?) -> [Int] {
        var stack:[btNode] = [btNode]()
        var output:[Int] = [Int]()
        
        if let rt = root{
            stack.append(rt)
            
            while !stack.isEmpty{
                let item:btNode = stack.removeLast()
                output.append(item.val)
                
                //Visit Left First
                if let left = item.prev{
                    stack.append(left)
                }
                
                //Visit Right After
                if let right = item.next{
                    stack.append(right)
                }
            }
        }
        return output.reversed() //Post Order stored in reversed order
    }

}

extension BinaryTree{
    
    /*
     Given a Binary Search Tree and a target number, return true if there exist
     two elements in the BST such that their sum is equal to the given target.
     */
    func findTarget(_ root: btNode?, _ k: Int) -> Bool {
        var dict:[Int:Int] = [Int:Int]()
        return findTargetInternal(root, k, &dict)
    }
    
    func findTargetInternal(_ root: btNode?, _ k: Int, _ dict:inout [Int:Int])->Bool{
        if root == nil {
            return false
        }else{
            let diff = k - root!.val
            if let _ = dict[root!.val] {
                return true
            }else {
                dict[diff] = root!.val
                return findTargetInternal(root?.prev, k, &dict) || findTargetInternal(root?.next, k, &dict)
            }
        }
    }
}

extension BinaryTree{
    
    /*
     Given the root node of a binary search tree, return the sum of values of all nodes with value
     between L and R (inclusive).
     The binary search tree is guaranteed to have unique values.
     */
    func rangeSumBST(_ root: btNode?, _ L: Int, _ R: Int) -> Int {
        if root == nil{//Leaf Nodes
            return 0
        }else{
            if L <= root!.val && root!.val <= R { //If Within Range
                return root!.val + rangeSumBST(root?.prev, L, R) + rangeSumBST(root?.next, L, R)
            }else{ //Else
                return rangeSumBST(root?.prev, L, R) + rangeSumBST(root?.next, L, R)
            }
        }
    }

}

extension BinaryTree{
    
    /*
     Given a complete binary tree, count the number of nodes.
     Time : O(n)
     */
    func countNodes(_ root: btNode?) -> Int {
        if root == nil{
            return 0
        }else{
            return 1 + countNodes(root?.prev) + countNodes(root?.next)
        }
    }
}

extension BinaryTree{
    
    /*
     Given a binary tree, imagine yourself standing on the right side of it,
     return the values of the nodes you can see ordered from top to bottom.
     */
    func rightSideView(_ root: btNode?) -> [Int] {
        var parentQueue:[btNode] = [btNode]()
        var childQueue:[btNode] = [btNode]()
        var output:[Int] = [Int]()
        
        if let rt = root{
            //Root Node
            parentQueue.append(rt)
            
            while !parentQueue.isEmpty{
                let item:btNode = parentQueue.removeFirst()
                
                if let left = item.prev{ //Left
                    childQueue.append(left)
                }
                if let right = item.next{ //Right
                    childQueue.append(right)
                }
                if parentQueue.isEmpty{
                    output.append(item.val)
                    parentQueue.append(contentsOf: childQueue)
                    childQueue.removeAll()
                }
            }
        }
        return output
    }
    
}

extension BinaryTree{
    
    /*
     Given a binary tree containing digits from 0-9 only, each root-to-leaf path could represent a number.
     An example is the root-to-leaf path 1->2->3 which represents the number 123.
     Find the total sum of all root-to-leaf numbers.
     Note: A leaf is a node with no children.
     */
    func sumNumbers(_ root: btNode?) -> Int {
        var sum:Int = 0
        if let root = root{
            sumNumbersInternal(root, &sum, "\(root.val)")
        }
        return sum
    }
    
    func sumNumbersInternal(_ root:btNode?, _ sum:inout Int, _ pathSum:String){
        if root?.prev == nil && root?.next == nil{
            if let value = Int(pathSum){
                sum += value
            }
            return
        }else{
            if let left = root?.prev{
                sumNumbersInternal(left, &sum, "\(pathSum)\(left.val)")
            }
            if let right = root?.next{
                sumNumbersInternal(right, &sum, "\(pathSum)\(right.val)")
            }
        }
    }
    
}

extension BinaryTree{
    
    /*
     Given a binary tree, determine if it is a valid binary search tree (BST).
     Assume a BST is defined as follows:
     The left subtree of a node contains only nodes with keys less than the node's key.
     The right subtree of a node contains only nodes with keys greater than the node's key.
     Both the left and right subtrees must also be binary search trees.
     Time : O(n)  Space : O(n)
     */
    func isValidBST(_ root: btNode?) -> Bool {
        var isValid:Bool = true, index = 1
        //Generate In-Order of given BST
        var inOrder:[Int] = [Int]()
        isValidBSTInternal(root, &inOrder)
        
        //Check if It is Sorted IF Yes - BST, ELSE - No
        while index < inOrder.count{
            if inOrder[index - 1] >= inOrder[index]{
                isValid = false
                break
            }
            index += 1
        }
        
        //Conclusion : In-Order of any given BST is always Sorted in ascending Order.
        return isValid
    }
    
    func isValidBSTInternal(_ root: btNode?, _ inOrder:inout [Int]){
        if root == nil{
            return
        }else{
            if let left = root?.prev{
                isValidBSTInternal(left, &inOrder)
            }
            if let value = root?.val{
                inOrder.append(value)
            }
            if let right = root?.next{
                isValidBSTInternal(right, &inOrder)
            }
        }
    }
}

extension BinaryTree{
    
    /*
        Given a binary tree, find the leftmost value in the last row of the tree.
        Time : O(n)
    */
    func findBottomLeftValue(_ root: btNode?) -> Int {
        var bottomLeft:Int = -1
        var deepestLevel:Int = 0
        if let root = root {
            if root.prev ==  nil && root.next == nil{
                return root.val
            }
            findBottomLeftValueInternal(root, 1, &bottomLeft, &deepestLevel)
        }
        return bottomLeft
    }
    
    func findBottomLeftValueInternal(_ root: btNode?, _ level:Int, _ bottomLeft:inout Int, _ deepestLevel:inout Int){
        if root?.prev == nil && root?.next == nil{
            return
        }else{
            if let left = root?.prev {
                if deepestLevel < level{
                    bottomLeft = left.val
                    deepestLevel += 1
                }
                findBottomLeftValueInternal(left,level + 1, &bottomLeft, &deepestLevel)
            }
            if let right = root?.next {
                if deepestLevel < level{
                    bottomLeft = right.val
                    deepestLevel += 1
                }
                findBottomLeftValueInternal(right,level + 1, &bottomLeft, &deepestLevel)
            }
        }
    }
    
}



