//
//  Trie.swift
//  iOSPOC
//
//  Created by Rahul Goel on 28/04/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import Foundation

/*
 Trie : Digital Tree or Radix Tree or Prefix Tree
 Root associated with empty string
 Trie is Efficient Inforamtion reTRIEval data structure, storage is not the strong feat.
 
 Trie : tree that stores strings.
 Max number of children of a node is equal to alphabet size.
 Search Insert and Delete : O(L) time where L is Length of key
 
 Compressed Tries :
 PATRICIA : Practical Algorithm To Retrieve Information Coded in AlphaNumeric
 
 Hashing : We convert key to small value with Hash Function used to index data.
 Search Insert and Delete : O(L) time on average where L is Length of key
 
 Self Balancing BST : Either RB Tree, AVL, Splay Tree
 Search Insert and Delete : O(LLogn) n Total Number of words, L Length of word,
 advantage is finding min, max, closet, kth largest is faster due to order.
 
 
 Why Trie :
 1. Insert and Search faster than hashing no hashing, no collision
 2. Easy to print all words in alphabetical order
 3. Efficient to do prefix search or autocomplete
 
 Main Issue with Tries:
 Takes lot of memory, If Space is concern use Ternary Search Trees 
 
 */

final class TrieNodeWithHashMap {
    final var wordContainer:[Character:TrieNodeWithHashMap] = [:]
    final var endOfWord:Bool = false
    final var wordCount:Int = 0 //Increment if endOfWord = true
}

//MARK: Memory Efficient Trie
final class TrieWithHashMap{
    var root:TrieNodeWithHashMap = TrieNodeWithHashMap()
    init() {
    }
    
    //Takes array of strings as input and stores every string in Trie one by one
    final func insert(_ strs:[String]){
        var tempNode:TrieNodeWithHashMap? = root
        for str in strs{
            for char in str{
                if tempNode?.wordContainer[char] == nil{ //If Character Does'nt Exist Insert
                    tempNode?.wordContainer[char] = TrieNodeWithHashMap()
                }
                //Move To Next
                tempNode = tempNode?.wordContainer[char]
            }
            tempNode?.endOfWord = true
            tempNode = root
        }
    }
    
    //MARK: To search given string among strings stored in Trie
    final func searchSequence(_ str:String)->(Bool,TrieNodeWithHashMap?){
        var tmp:TrieNodeWithHashMap? = root
        for (index,char) in str.enumerated() {
            if let nxtNode = tmp?.wordContainer[char]{
                if index == str.count - 1{
                    return (true,nxtNode)
                }
                tmp = nxtNode
            }else{
                break
            }
        }
        return (false,nil)
    }
    
    //MARK: To search given word among stored words in Trie
    final func searchWord(_ str:String)->Bool{
        var found:Bool = false
        var tmp:TrieNodeWithHashMap? = root
        for (index,char) in str.enumerated() {
            if let nxtNode = tmp?.wordContainer[char]{
                if index == str.count - 1{
                    if nxtNode.endOfWord == true{
                        found = true
                    }
                }
                tmp = nxtNode
            }else{
                break
            }
        }
        return found
    }

    /*MARK: AutoComplete Feature :
     We are given a Trie with a set of strings stored in it. Now the user types in a prefix of his search query,
     we need to give him all recommendations to auto-complete his query based on the strings stored in the Trie.
     We assume that the Trie stores past searches by the users.
     For example if the Trie store {“abc”, “abcd”, “aa”, “abbbaba”} and
     the User types in “ab” then he must be shown {“abc”, “abcd”, “abbbaba”}.
    */
    final func searchAllWordsStartedWithPrefix(_ str:String)->[String]{
        let words:[String] = [String]()
        let found = searchSequence(str)
        if found.0 == true{
            //Get All the separate nodes linked to it
            if let values = found.1?.wordContainer.values  {
                 let _ = Array(values)
                
            }
            
        }
        
        return words
    }
    
    final func returnAllWordsStoredInTrie()->[String]{
        let words:[String] = [String]()
        return words
    }
    
    final func returnAllWordsWithLength(_ len:Int)->[String]{
        let words:[String] = [String]()
        return words
    }
    
    final func deleteWordFromTrie(_ word:String){
        var found:Bool = false
        deleteHelper(0, Array(word), root,&found)
    }
    
    final private func deleteHelper(_ index:Int, _ char:[Character],_ node:TrieNodeWithHashMap?,_ found: inout Bool){
        if index == char.count || node == nil{
            return
        }else{
            //To reach upto the end of the word to be deleted
            deleteHelper(index+1, char, node?.wordContainer[char[index]],&found)
            if node?.wordContainer.count ?? 0 == 1 && found == false{
                //Delete the node
                node?.wordContainer = [:]
                node?.endOfWord = false
                node?.wordCount = 0
            }else{
                //
                found = true
            }
        }
    }
    
    final func returnTrieContentsInLexographicOrder()->[String]{
        let result:[String] = [String]()
        let tmp:TrieNodeWithHashMap? = root
        if let _ = tmp{
            
        }
        
        return result
    }
    
    final private func returnTrieContentsInLexographicOrderHelper(){
        
    }
    
    /*
     Implement a dictionary using Trie such that if the input is a string representing a word,
     the program prints its meaning from the prebuilt dictionary.
     */
    final func implementDictionaryUsingTrie(_ str:String){
        
    }
    
    //Given an array of words find the most occurring word in it
    final func maxOccuringWordInArrayOfStrings(_ str:[String]){
        
    }
    
    /*
     Given a non-empty list of words, return the k most frequent elements.
     Your answer should be sorted by frequency from highest to lowest.
     If two words have the same frequency, then the word with the lower alphabetical order comes first.
     */
    final func top_K_MaxOccuringWords(){
        
    }
    
    final func longestCommonPrefix(){
        
    }
}

//-----------------------------------------------------

final class TrieNodeWithArray {
    final var wordContainer:[TrieNodeWithArray] = [TrieNodeWithArray]()
    final var endOfWord:Bool = false
    final var wordCount:Int = 0 //Increment if endOfWord = true
    
}
extension Character{
    func getAscii()->Int?{
        return Int(self.unicodeScalars.first?.value ?? 0)
    }
}
let AlphabetSize = 256

//MARK: Standard Trie
final class TrieWithArray{
    final var root:TrieNodeWithArray = TrieNodeWithArray()
    
    init() {
    }
    
    final func newNode(){
    
    }
    
    //Takes array of strings as input and stores every string in Trie one by one
    final func insert(_ strs:[String]){
        var tmp:TrieNodeWithArray? = root
        for (_,str) in strs.enumerated(){
            for char in str{
                if let asc = char.getAscii(){
                    if tmp?.wordContainer.isEmpty ?? false  {
                        tmp = TrieNodeWithArray()
                    }
                }
            }
        }
    }
}

//MARK: Compressed Trie
