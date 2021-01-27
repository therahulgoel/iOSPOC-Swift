//
//  CellswithOddValuesinaMatrix.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 16/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/cells-with-odd-values-in-a-matrix/

func oddCells(_ n: Int, _ m: Int, _ indices: [[Int]]) -> Int {
    var matrix = Array(repeating: Array(repeating: 0, count: m), count: n)

    for indice in indices{
        //Update row
        let rowToUpdate = indice[0]
        matrix[rowToUpdate] = matrix[rowToUpdate].map { (item) -> Int in
            return item + 1
        }
        //Update column
        let columnToUpdate = indice[1]
        var i = 0
        while i < n{
            matrix[i][columnToUpdate] += 1
            i += 1
        }
    }
    var count = 0
    for row in matrix{
        for ele in row{
            if ele%2 != 0{
                count += 1
            }
        }
    }
    return count
}
