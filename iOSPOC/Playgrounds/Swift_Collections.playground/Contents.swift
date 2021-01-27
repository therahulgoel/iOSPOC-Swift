//: Playground - noun: a place where people can play
//Created On : XCode 11.0
// By : Rahul Goel CSE

import Cocoa

var str = "Hello, playground For Collections"

/*
 Swift provides three primary collection types, known as arrays, sets, and dictionaries, for storing collections of values.
 Arrays are ordered collections of values.
 Sets are unordered collections of unique values.
 Dictionaries are unordered collections of key-value associations.
 */

//1. Arrays
    //An array stores values of the same type in an ordered list.
    //1. Creating an Empty Array
    var array1 = [Int]()
    print(array1.count)
    array1.append(1)
    array1.append(2)
    array1.append(3)
    array1.count

    array1.contains(3)
    array1.isEmpty
    array1.insert(9, at: 0)
    array1.removeFirst()
    array1.removeLast()
    array1.removeLast(0)
    array1.removeFirst(0)


    

//2. Sets
    //A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items is not important, or when you need to ensure that an item only appears once.
    var set1:Set = [1,2,3,3,1,1,2,3,2,3,4]
    set1.count    //Only Distinct elements

    //Checking membership
    set1.contains(5)
    set1.contains(3)

    //Iterating over set
    for item in set1 {
        print(item)
    }

    //Performing Set operations
    var set2:Set = [1,2,3,4,5]
    var set3:Set = [5,6,7,8]
    var intersection:Set = set2.intersection(set3)
    var union:Set = set2.union(set3)


//3. Dictionaries
    //A dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary.

var dict:[String:Any] = [String:String]()
dict["name"] = "mansi"
dict["age"] = 24

dict["Education"] = "M.tech Software Engineering"
var someDict = [Int:String]()
someDict[0] = "mansi"

var dictionary = [0:"rahul",111:"mansi"]


func addTwoNumber(a:Int, b:Int)->Int{
    return a+b
}

addTwoNumber(a: 1, b: 4)

func name(_ a:String)->String{
    return "Hello "+a
    }

name("rahul")

func nothing(){
    print("nothing")
}

nothing()

func sumOfArray(a:Int...)->Int{
    return a.count
}

sumOfArray(a: 1)
sumOfArray(a: 1,2,3,3,4,4,4)
sumOfArray(a: 2,2,2,2,231412,324,2134)

class StudentInfo{
    var name:Int = 0
    var data:String = ""

}

class Mansi{
    func simfuntion(){
        let obj:StudentInfo = StudentInfo()
        obj.data = "rahul"
        obj.name = 90
    }
}




