//
//  PatternsUtility.swift
//  iOSPOC
//
//  Created by Rahul Goel on 05/02/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

public final class PatternsUtility{
}

extension PatternsUtility {
    
    /*
     Print the pattern below for given value of n
         *
         **
         ***
         ****
         *****
     */
    public class func pattern1(n:Int){
        var i = 0, j = 0
        
        while i < n {
            j = 0
            while j <= i {
                print("*", terminator: "")
                j += 1
            }
            print("")  //For NewLine or \n like C Language
            i += 1
        }
    }
}
