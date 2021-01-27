import UIKit

var str = "Hello, playground for Access Control "


// **** Private, Internal, Public, Fileprivate, open ****

//Access control restricts access to parts of your code from code in other source files and modules. This feature enables you to hide the implementation details of your code, and to specify a preferred interface through which that code can be accessed and used.

//Default access level in swift is “internal” in case you haven’t define any of them

//1. open vs Public
/*
 Open : It is the highest access level.
        You can access it from any module or source filem by importing the module it is defined in.
        You can subclass, override it
 
 Public : You can access it from any module or source filem by importing the module it is defined in.
        Can not override/subclass outside the module it is defined in.
 
 */

//1. open
class B{
    open func someMethod1(){
    }
}

//2. public
class C{
    public func someMethod2(){
    }
}

//3. Internal
//Members can be accessed anywhere within the same module they are defined.
class D{
    internal func someMethod3(){
    }
}

//4. fileprivate
//Restrict usage to its own defining source file.

//5. private
//Restrict usage to the enclosing scope of the member.
class A{
    private class func someMethod1(){
    }
    class func someMethod2(){
        someMethod1()
    }
}
A.someMethod2()



