//: Playground - noun: a place where people can play
//Created On : XCode 11.0
// By : Rahul Goel CSE

import Cocoa

var str = "Hello, playground Extensions"

/*
 Extensions add new functionality to an existing
 class,
 structure,
 enumeration, or
 protocol type.
 */

/*
 This includes the ability to extend types for which you do not have access to the original source code (known as retroactive modeling).
 Extensions are similar to categories in Objective-C. (Unlike Objective-C categories, Swift extensions do not have names.)
 */

/*
 Extensions can add new functionality to a type, but they cannot override existing functionality.
 */

extension String {
    mutating func appendMarsLandingMessage(){
         self.append("Day has finally arrived, Welcome to our new Home Mars Rahul !!!")
    }
}

var captain = "Rahul, "
captain.appendMarsLandingMessage()


