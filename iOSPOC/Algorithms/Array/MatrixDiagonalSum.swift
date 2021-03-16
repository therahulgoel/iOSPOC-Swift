//
//  MatrixDiagonalSum.swift
//  iOSPOC
//
//  Created by Rahul Goel on 24/02/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/matrix-diagonal-sum/


func diagonalSum(_ mat: [[Int]]) -> Int {
    var i = 0, principalDiagonal = 0, secondaryDiagonal = 0, j = 0
    while i < mat.count{
        j = mat.count - i - 1
        principalDiagonal += mat[i][i]
        if i != j{
            secondaryDiagonal += mat[i][j]
        }
        i += 1
    }
    return principalDiagonal + secondaryDiagonal
}
