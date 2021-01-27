//
//  MatrixTests.swift
//  iOSPOC
//
//  Created by Rahul Goel on 13/03/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final class MatrixTests{
    
    final class func test2DMatrixCreation(){
        let mat = Matrix(arr: [[1,2],
                               [1,3,5]])
        mat.printgrid2D()
    }
    
    final class func test3DMatrixCreation(){
        let mat = Matrix(arr: [[[1,2],[1,3,5]],
                               [[11,22],[11,33,55]]])
        mat.printgrid3D()
    }
}
