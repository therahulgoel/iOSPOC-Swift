//: Playground - noun: a place where people can play
//Created On : XCode 11.0
// By : Rahul Goel CSE


import Cocoa

var str = "Hello, playground For OOPs"

//1. Classes And Structures

class someClass{
    //Class Definition goes here
    var property1:String = ""
    var property2:Int?
}

struct someStructure{
    //Structure definition goes here
    var property1:String = ""
    var property2:Int?
}

//2. Classes And Structures Instances
let objClass:someClass = someClass()
var objStruct:someStructure = someStructure()

//3.  Accessing Classes And Structures Properties
objClass.property1
objStruct.property1

//4. Initialization class Members
objClass.property1 = "Rahul Goel"
objClass.property1

//5. Initialization struct Members "Memberwise Initializers"
let obj = someStructure(property1: "Memberwise Initializers", property2: 10)
obj.property1
obj.property2

//Or
objStruct.property1 = "New"
objStruct.property2 = 100
obj.property1
obj.property2

//6.
//a. Classes:
//1. are reference types
//2. Uses ARC
//3. Inheritance Possible
//4. Can check type of class at run time
//b. Structures:
//1. are value types
//2. Does not uses ARC
//3. Inheritance Not Possible


//7.
struct A{
    //Static Methods in Struct
    static func printHello(){
        print("Hello")
    }
}

class B{
    //Static Methods in classes
    final class func printHello(){
        print("Hello")
    }
}


A.printHello()
B.printHello()


//Two Phased Initialization in Swift
//All statements before calling “super.init()” must not involve any use of inherited properties in any way. Once “super.init()” is executed you are free to customise and access all properties and methods.

class Rocket{
    var name:String
    var source:String = "Earth"
    init(name:String) { //Convinence Initializer
        self.name = name
    }
}

class Falcon9:Rocket{
    var isReusable:Bool = true
    private final var company = "SpaceX"
    
    init(name: String,isReusable:Bool) {
        self.isReusable = isReusable
        print(self.isReusable)
        //print(self.name)             //Will Get Error If Uncomment this
        //self.printMyOwnProperties()  //Will Also Get Error If Uncomment this
        super.init(name: name)
        self.printInheritedProperties()
    }
    
    func printInheritedProperties(){
        print(self.name)
    }
    
    final func printMyOwnProperties(){
        print(self.isReusable)
    }
}

/*
 So To Generalize : In a Subclass(i.e. Falcon9) Init, Before super.init() you can only access and update the instance properties of subclass i.e. Falcon9, Not the methods even if it contain properties added in Falcon9 only.
 All statements before calling “super.init()” must not involve any use of inherited properties in any way.
 In Initialization First phase : all the newly added properties are inialized starting from subclass upto the utmost superclass,
 In Phase Two : It then initialized all the other overridden properties and stuff
 */
