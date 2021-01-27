//
//  LuckyNumbersinaMatrix.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 26/03/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/lucky-numbers-in-a-matrix/


func luckyNumbers (_ matrix: [[Int]]) -> [Int] {
    var minColumnNumbers:[Int] = [Int](), i = 0, j = 0
    var maxColumnNumbers:[Int] = [Int]()
    let rows = matrix.count
    let column = matrix[0].count
    var index = 0
    while index < rows {
        minColumnNumbers.append(findMin(matrix[index]))
        index += 1
    }
    while i < column{
        j = 1
        var max = matrix[0][i]
        while j < rows {
            if max < matrix[j][i]{
                max = matrix[j][i]
            }
            j += 1
        }
        maxColumnNumbers.append(max)
        i += 1
    }
    return Array(Set(minColumnNumbers).intersection(Set(maxColumnNumbers)))
}
func findMin(_ arr:[Int])->Int{
    var min = arr[0]
    var i = 1
    while i < arr.count{
        if min > arr[i]{
          min = arr[i]
        }
        i += 1
    }
    return min
}
