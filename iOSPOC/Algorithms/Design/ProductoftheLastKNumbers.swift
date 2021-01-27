//
//  ProductoftheLastKNumbers.swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 22/04/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/product-of-the-last-k-numbers/

class ProductOfNumbers {
    private var productArr:[Int] = [Int]()
    
    init() {
    }
    
    func add(_ num: Int) {
        //Update the product array
        if productArr.isEmpty{
            productArr.append(num)
        }else{
            productArr = productArr.map({ (item) -> Int in
                item * num
            })
            productArr.append(num)
        }
    }
    
    func getProduct(_ k: Int) -> Int {
        return productArr[productArr.count - k]
    }
}


