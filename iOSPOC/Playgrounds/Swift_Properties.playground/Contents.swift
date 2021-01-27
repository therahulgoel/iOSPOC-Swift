import UIKit

var str = "Hello, playground for Properties"

//Properties associate values with a particular class, structure, or enumeration.

/*
 1. Stored Property :
        Stores constant and variable values as part of instance
        available in class, structure
        Can add property observer

 
 2. Computed Property :
        Calculates values rather storing
        available in class, structure, enum
 
 3. Lazy Stored Property :
        Can't add property observer :
 
 4. Inherited (Stored or Computed Property) :
        Can add property observer


*/

//Property Observers :
//Observe and respond to changes in property's value. Property observers are called every time a property’s value is set, even if the new value is the same as the property’s current value.


var sum:Int = 0{
    //willSet is called just before the value is stored.
    willSet{
        print("Will increase the sum from \(sum) to \(newValue)")
    }
    
    //didSet is called immediately after the new value is stored.
    didSet{
        print("increased the sum from \(oldValue) to \(sum)")
    }
}

sum = 1
