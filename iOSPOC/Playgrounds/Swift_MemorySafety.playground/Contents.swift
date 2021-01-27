import UIKit

var str = "Hello, playground Memory Safety"

//*******
//To Show object is getting deallocated after end of scope
class User {
    let name: String
    init(name: String) {
        self.name = name
        print("User \(name) was initialized")
    }
    deinit {
        print("Deallocating user named: \(name)")
    }
}
class TestClass{
    
    class func test1(){
        let _ = User(name: "Rahul")
    }
}

TestClass.test1()
//*******

/*
 Swift Object Life Cycle :
 1. Allocation: Takes memory from a stack or heap.
 2. Initialization: init code runs.
 3. Usage.
 4. Deinitialization: deinit code runs.
 5. Deallocation: Returns memory to a stack or heap.
 
 "Reference count" count indicates how many “things” reference the object
 
 Weak vs Unowned :
 Weak references are always optinal and automatically becomes nil when referenced object goes away.
 UnOwned object are never optional types, If you try to access unowned property that refers to deinitialized object, it will lead to runtime error similiar to force unwrap nil optional type.
 */
