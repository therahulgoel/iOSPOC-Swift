//
//  UncommonWordsfromTwoSentences.swift
//  iOSPOC
//
//  Created by Rahul Goel on 27/02/21.
//  Copyright © 2021 Rahul Goel. All rights reserved.
//

import Foundation

func uncommonFromSentences(_ A: String, _ B: String) -> [String] {
    var wordsSetA = Set(A.components(separatedBy: " "))
    let wordsSetACopy = wordsSetA
    var wordsSetB = Set(B.components(separatedBy: " "))
    var result = [String]()

    //1. Does not appear in other sentence
    wordsSetA.subtract(wordsSetB)
    wordsSetB.subtract(wordsSetACopy)
    
    //2. Appear once in same sentence
    for word in wordsSetA{
        let count = A.components(separatedBy: " ").filter({ (item) -> Bool in
            return item == word
        }).count
        if count > 1{
            wordsSetA.remove(word)
        }
    }
    
    for word in wordsSetB{
        let count = B.components(separatedBy: " ").filter({ (item) -> Bool in
            return item == word
        }).count
        if count > 1{
            wordsSetB.remove(word)
        }
    }
    
    result.append(contentsOf: wordsSetA)
    result.append(contentsOf: wordsSetB)
    return result
}
