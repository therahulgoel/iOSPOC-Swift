import UIKit

var str = "Hello, playground for Enumerations"

enum Planets{
    case Earth
    case Mars
        
    var hasLifeOnPlanet :Bool { //Computed Properties
        return self == .Earth
    }
    
    func planetDescription(){
        
    }
}

//Self vs self

class Superclass {
    func f() -> Self { return self }
}
let x = Superclass()
print(type(of: x.f()))
// Prints "Superclass"

class Subclass: Superclass { }
let y = Subclass()
print(type(of: y.f()))
// Prints "Subclass"

let z: Superclass = Subclass()
print(type(of: z.f()))
// Prints "Subclass"


class A {
  func method() {
       print("\(self)")
    }
  }
let a = A()
a.method()
// prints "A"
