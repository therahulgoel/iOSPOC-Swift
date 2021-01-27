import UIKit

var str = "Hello, playground for guard and defer statements"

/*defer statement
 A defer statement is used for executing code just before transferring program control outside of the scope that the statement appears in.
 */

func someMethod1(){
    defer {
        print("In The End It Does not even Matter")
    }
    print("First Instruction")
}
//someMethod1()

func someMethod2(){
    defer {
        print("In The End 1")
    }
    defer {
        print("In The End 2")
    }
    defer {
        print("In The End 3")
    }

    print("First Instruction")
}
//someMethod2()

func someMethod3(){
    defer {
        print("In The End It Does not even Matter 3")
    }
    print("First Instruction 3")
    return
}
//someMethod3()

func someMethod4(){
    return
    defer {
        print("In The End It Does not even Matter 4")
    }
    print("First Instruction 4")
    return
}
someMethod4()

//Guard Statement
func printName(name:String?,age:Int?){
    guard let name = name,let age = age else{
        print("Something is missing")
        return
    }
    print("\(name) and \(age)")
}

//printName(name: "Rahul", age: 20)
//printName(name: nil, age: 20)
//printName(name: "Rahul", age: nil)


//







