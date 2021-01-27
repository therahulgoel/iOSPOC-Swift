//
//  TrieTests.swift
//  iOSPOC
//
//  Created by Rahul Goel on 28/04/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

final class TrieTests{
    
    final class func newNode(){
        let node:TrieWithHashMap = TrieWithHashMap()
        node.insert(["rahul","ravi","rajesh"])
        
        print(node.searchSequence("rahul"))
        print(node.searchSequence("rasu"))
        print(node.searchSequence("ra"))
        print(node.searchSequence("rahul1"))
        
        print(node.searchWord("rahul"))
        print(node.searchWord("rasu"))
        print(node.searchWord("ra"))
        print(node.searchWord("rahul1"))
    }
    
    
    final class func deleteWordFromTrie(){
        //Test 1:
        let node1:TrieWithHashMap = TrieWithHashMap()
        node1.insert(["rahul","ravi","rajesh"])
        node1.deleteWordFromTrie("rahul")
        
        //Test 2:
        let node2:TrieWithHashMap = TrieWithHashMap()
        node2.insert(["rahul","rahu"])
        node2.deleteWordFromTrie("rahul")
        
        //Test 3:
        let node3:TrieWithHashMap = TrieWithHashMap()
        node3.insert(["rahul","rahu"])
        node3.deleteWordFromTrie("vivek")
        
        //Test 4:
        let node4:TrieWithHashMap = TrieWithHashMap()
        node4.insert(["rahul","rahu"])
        node4.deleteWordFromTrie("vivek")

    }
    
    final class func returnTrieContentsInLexographicOrder(){
        //Test 1:

    }
}
