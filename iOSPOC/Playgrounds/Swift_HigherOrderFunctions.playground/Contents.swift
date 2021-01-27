import UIKit

var str = "Hello, playground for higher order functions"

//Higher order functions are functions that takes another function/closure as argument and returns it

//**** MAP ****
//Multiply Each Array element by 2 with Map Function from array
let arr:[Int] = [1,2,3,4,5]
var result:[Int] = [Int]()

result  = arr.map { (element) -> Int in
    return element*2
}
result = arr.map({ (element) in
    element*2
})
result = arr.map({$0*2})


//**** FILTER ****
//Remove all even numbers from given array
let arr1:[Int] = [Int]()
var result1:[Int] = [Int]()

result1 = arr.filter({ (element) -> Bool in
    return element%2 == 0
})

result1 = arr.filter({$0%2 == 0})

//Filter Girls having age less than 22
var dict:[String:Int] = [String:Int]()
dict["a"] = 21
dict["b"] = 29
dict["c"] = 41
dict["d"] = 11

var resultDict:[String:Int] = [String:Int]()

resultDict = dict.filter({ (key,value) -> Bool in
    value < 22
})

let scores = ["1", "2", "three", "four", "5"]

//**** FLATMAP ****
/*useful when there is collection inside collection and we want to merge them into
 single collection
*/
let marks = [[3, 4, 5], [2, 5, 3], [1, 2, 2], [5, 5, 4], [3, 5, 3]]
let allMarks = marks.flatMap{ (arr) ->[Int] in
        return arr
}
// allMarks = [3, 4, 5, 2, 5, 3, 1, 2, 2, 5, 5, 4, 3, 5, 3]

let names = [["rahul"],["kshitij"],["lovekesh",nil]]
let allNames = names.flatMap{ (arr) ->[String?] in
        return arr
}
//allNames = ["rahul", "kshitij", "lovekesh", nil]


//**** COMPACT MAP ****
//Removes nil values from the collection it is applied on unlike map
let compactMapped: [Int] = scores.compactMap { str in Int(str) }
print(compactMapped)
// [1, 2, 5] - The nil values for "three" and "four" are filtered out.

let mapped: [Int?] = scores.map { str in Int(str) }
print(mapped)
// [1, 2, nil, nil, 5] - Two nil values as "three" and "four" are strings.


//**** REDUCE ****

//Implementing Your Own Map Function :
//Map function is basiclly applying the transform function provided by user and returning the result for the same.
extension Sequence{
    func customMap<T>(transform:(Element)->T)->[T]{
        var result:[T] = [T]()
        for i in self{
            result.append(transform(i))
        }
        return result
    }
}
result  = arr.customMap { (element) -> Int in
    return element*2
}
result  = arr.customMap { (element) -> Int in
    return element+2
}

var arr3:[String] = ["A","B","C","D"]
var resultStr:[String] = [String]()
resultStr = arr3.customMap(transform: { (element) -> String in
    element + " On"
})

//**** REDUCE ****
//to produce one value from the values of all elements in a collection.
let arr5 = [1,2,3,4,5]
let productOfAll = arr5.reduce(1) { (partialResult, number) -> Int in
    // 1 is the initial result
    return partialResult*number
}
//productOfAll = 120


//Implementing Your Own Filter Function :
extension Sequence{
    func customFilter<T>(transform:(_ num : T)->Bool)->[T]{
        var result:[T] = [T]()
        for i in self{
            if let i = i as? T{
                if transform(i) == true {
                    result.append(i)
                }
            }
        }
        return result
    }
}

result1 = arr.customFilter(transform: { (element) -> Bool in
    return (element % 2 == 0)
})




//Implementing Your Own Reduce Function :


//where clause


//Codable Protocol = Encodable and Decodable
