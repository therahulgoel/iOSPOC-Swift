//
//  1042.swift
//  iOSPOC
//
//  Created by Rahul Goel on 03/09/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/flower-planting-with-no-adjacent/

final class P1042{
    final class func gardenNoAdj(_ N: Int, _ paths: [[Int]]) -> [Int] {
        
        
        //Create Adjc List from given Edge List
        var adjcList:[Int:[Int]] = [Int:[Int]]()
        var colorsAssigned:[Int] = Array(repeating: 0, count: N)
        var index = 0
        
        //To add all vertices in Adjc List
        while  index < N {
            adjcList[index] = []
            index += 1
        }
        
        //To add all the neighbours in Adjc List
        for (_,pair) in paths.enumerated(){
            if pair.count == 2{
                    adjcList[pair[0] - 1]?.append(pair[1] - 1)
                    adjcList[pair[1] - 1]?.append(pair[0] - 1)
            }
        }
        
        var visited:Set<Int> = Set<Int>()
        index = 0
        while index < N {
            traverseUntil(&visited, index, adjcList,&colorsAssigned)
            index += 1
        }
        
        return colorsAssigned
    }
    
    class func traverseUntil(_ visited: inout Set<Int>, _ v:Int, _ adjcList:[Int:[Int]], _ colorsAssigned:inout [Int]){
        var queue:[Int] = [Int]()
        queue.append(v)
        
        while !queue.isEmpty {
            
            //Dequeue first element from Queue
            let first = queue.removeFirst()
            
            if !visited.contains(first){
                visited.insert(first)
            }

            
            //To get the unvisited neighbours of vertex v
            let unvisitedNeighbours = getNeighbours(first, adjcList).filter { (item) -> Bool in
                !visited.contains(item)
            }
            
            //Assign color to a node out of available 4 colors based on its neighbour's colour
            var colorsAvailable:[Int] = [1,2,3,4]

            //Get Colors of neighbours
            var neighbourColors:[Int] = [Int]()
            for nei in unvisitedNeighbours{
                if colorsAssigned[nei] != 0{
                    neighbourColors.append(colorsAssigned[nei])
                }
            }
            
            colorsAvailable = colorsAvailable.filter { (index) -> Bool in
                !neighbourColors.contains(index)
            }
            
            colorsAssigned[first] = colorsAvailable[0]
            
            queue.append(contentsOf: unvisitedNeighbours)
        }
    }
    
    final class func getNeighbours(_ v:Int,_ adjcList:[Int:[Int]])->[Int]{
        return adjcList[v] ?? []
    }
    
}



extension P1042{
    final class func gardenNoAdjTest(){
        print(P1042.gardenNoAdj(3, [[1,2],[2,3],[3,1]]))
        print(P1042.gardenNoAdj(4, [[1,2],[3,4]]))
        print(P1042.gardenNoAdj(4, [[1,2],[2,3],[3,4],[4,1],[1,3],[2,4]]))
    }
}
