//
//  997.swift
//  iOSPOC
//
//  Created by Rahul Goel on 02/09/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/find-the-town-judge/

final class P997{
    
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        
        //Represent the same in 2D matrix
        var mat:[[Int]] = Array(repeating: Array(repeating: 0, count: N), count: N)
        
        for pair in trust{
            if pair.count == 2{
                mat[pair[0] - 1][pair[1] - 1] = 1
            }
        }
        
        //Search for all the Row with all zeores aka judge who trusts no one
        var allZeroRows:[Int] = [Int]()
        
        for (index,row) in mat.enumerated(){
            let checkIfAllZero = row.filter { (item) -> Bool in
                item == 1
            }
            
            if checkIfAllZero.isEmpty{
                allZeroRows.append(index)
            }
        }
        
        if allZeroRows.count > 1 || allZeroRows.count == 0{
            return -1
        }
        //Saerch for the column having all 1 except only one 0 for respctive allZeroRows label
        var count = 0
        for (_, rowsArray) in mat.enumerated(){
            if rowsArray[allZeroRows[0]] == 1 {
                count += 1
            }
        }
        
        if count == N - 1{
            return allZeroRows[0] + 1
        }
        return -1
    }
    
    final func findJudgeTest(){
        print(findJudge(2, [[1,2]]))
        print(findJudge(3, [[1,3],[2,3]]))
        print(findJudge(3, [[1,3],[2,3],[3,1]]))
        print(findJudge(3, [[1,2],[2,3]]))
        print(findJudge(4, [[1,3],[1,4],[2,3],[2,4],[4,3]]))
    }
}


