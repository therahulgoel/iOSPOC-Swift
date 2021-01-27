import Foundation
import UIKit
var str = "Hello, Method Swizzling in Swift"

/**
 Method swizzling is the process of changing the implementation of an existing selector at runtime.
 Simply speaking, we can change the functionality of a method at runtime.
 This is an Objective-C runtime feature.
 */


public extension UIColor {
    //Always Return Black Color
    @objc func hackThisShit() -> UIColor {
        return UIColor.black
    }

    private static let makeItAllBlack: Void = {
        let instance: UIColor = UIColor.red
        let aClass: AnyClass! = object_getClass(instance)
        let originalMethod = class_getInstanceMethod(aClass, #selector(description))
        let swizzledMethod = class_getInstanceMethod(aClass, #selector(colorDescription))
        if let originalMethod = originalMethod, let swizzledMethod = swizzledMethod {
        // switch implementation..
        method_exchangeImplementations(originalMethod, swizzledMethod)
        }
    }()
    
    static func makeEveryColorReturnBlack(){
        _ = self.makeItAllBlack
    }
}




//Trying to Make String count function print random number.
public extension String {
//    @objc func hackThisShit()->Int{
//        return Int.random(in : 0 ... count)
//    }
}
//This wont compile as @objc can only be used with members of classes, @objc protocols, and concrete extensions of classes.
