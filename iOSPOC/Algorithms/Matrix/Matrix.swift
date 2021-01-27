//
//  Matrix.swift
//  iOSPOC
//
//  Created by Rahul Goel on 13/03/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final class Matrix{
    
    var grid2D:[[Int]] = [[Int]]()
    var grid3D:[[[Int]]] = [[[Int]]]()
    
    init(){
    }
    
    init(arr:[[Int]]) {
        grid2D = arr
    }
    
    init(arr:[[[Int]]]) {
        grid3D = arr
    }
    
    final func countIs()->Int{
        return grid2D.count
    }
    
    final func printgrid2D(){
        for ele in grid2D {
            for val in ele {
                print(val, terminator: "")
            }
            print()
        }
    }
    
    final func printgrid3D(){
        for d1 in grid3D{
            for d2 in d1{
                for d3 in d2{
                    print(d3, terminator: "")
                }
                print()
            }
        }
    }
    
    //Given an square matrix, turn it by 90 degrees in anti-clockwise direction without using any extra space.
    final class func rotate2DMatrix90Degree(){
        
    }
    
    final class func transpose2DMatrix(){
        
    }
    
    final class func additionOf(mat1:[[Int]],mat2:[[Int]]){
        
    }

    final class func subtractionOf(mat1:[[Int]],mat2:[[Int]]){
        
    }
    
    final class func productOf(mat1:[[Int]],mat2:[[Int]]){
        
    }
    
    final class func checkIfSparse(){
        
    }
    
    final class func checkIfIdentity(){
        
    }
    
    final class func checkIfEqual(mat1:[[Int]],mat2:[[Int]]){
        
    }
    
    final class func sortRowsInAscendingOrder(){
        
    }
    
    final class func printInSpiralForm(){
        
    }

}
