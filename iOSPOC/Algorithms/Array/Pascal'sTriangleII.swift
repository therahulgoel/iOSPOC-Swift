//
//  Pascal'sTriangleII.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 16/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/pascals-triangle-ii/

func getRow(_ rowIndex: Int) -> [Int] {
    var result = [[Int]]()
    if rowIndex <= 0{
        return []
    }
    result.append([1])
    var i = 1, j = 0

    while i < rowIndex + 1 {
        let lastRow = result[i - 1]
        let lastRowLength = lastRow.count
        var nextRow = [Int]()
        j = 0
        while j < lastRowLength{
            if (j + 1) < lastRowLength{
                nextRow.append(lastRow[j] + lastRow[j + 1])
            }
            if j == lastRowLength - 1{
                nextRow.insert(1, at: 0)
                nextRow.append(1)
            }
            j += 1
        }
        result.append(nextRow)
        i += 1
    }
    return result.last ?? []
}
