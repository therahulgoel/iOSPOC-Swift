//
//  NumberofStepstoReduceaNumbertoZero .swift
//  iOSPOC
//
//  Created by Rahul1 Goel on 24/02/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/

func numberOfSteps (_ num: Int) -> Int {
    var steps:Int = 0
    var number = num
    while number > 0 {
        if number%2 == 0{ //Even
            number = number/2
        }else{ //Odd
            number = number - 1
        }
        steps += 1
    }
    return steps
}

