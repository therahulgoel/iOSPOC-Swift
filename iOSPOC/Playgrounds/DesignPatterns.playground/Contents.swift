import UIKit

var str = "Hello, playground for design patterns"

/*
 Design patterns are reusable solutions to common problems in software design.
 They’re templates designed to help you write code that’s easy to understand and reuse. They also help you create loosely coupled code so that you can change or replace components in your code without too much hassle.
 
 Creational: Singleton, Factory, Builder
 Structural: MVC, Decorator, Adapter, Facade, MVVM, VIPER
 Behavioral: Observer, and, Memento
 
 */

/*
 1. Singleton :
 The Singleton design pattern ensures that only one instance exists for a given class and that there’s a global access point to that instance. It usually uses lazy loading to create the single instance when it’s needed the first time.
 
*/
final class SomeClass{
    static let shared = SomeClass()
    var someProperty:String = ""
    private init(){
    }
}

print(SomeClass.shared.someProperty)

/*
 2. Facade :
 The Facade design pattern provides a single interface to a complex subsystem. Instead of exposing the user to a set of classes and their APIs, you only expose one simple unified API.
 This is also useful if the classes under the facade are likely to change, as the facade class can retain the same API while things change behind the scenes.
 For example, if the day comes when you want to replace your backend service, you won’t have to change the code that uses your API, just the code inside your Facade.

 */



/*
 3. Decorator :
 The Decorator pattern dynamically adds behaviors and responsibilities to an object without modifying its code.
 It’s an alternative to subclassing where you modify a class’s behavior by wrapping it with another object.
 In Swift there are two very common implementations of this pattern: Extensions and Delegation.

 */



/*
 4. Adapter :
 An Adapter allows classes with incompatible interfaces to work together. It wraps itself around an object and exposes a standard interface to interact with that object.
 */


/*
 5. Observer :
 The objects involved don't need to know about one another - thus encouraging a decoupled design. This pattern's most often used to notify interested objects when a property has changed.
 The usual implementation requires that an observer registers interest in the state of another object. When the state changes, all the observing objects are notified of the change.
    1. Notifictions
    2. KVO
 */

/*6. Builder :
 The Builder is a design pattern designed to provide a flexible solution to various object creation problems in object-oriented programming
 The intent of the Builder design pattern is to separate the construction of a complex object from its representation.
 */

/*
 7. 
 */


/*
 SOLID :
    1. S - Single Responsibility Principle
        a class should have only a single responsibility
    2. O - Opem/Closed Principle
        software entities … should be open for extension, but closed for modification
    3. L - Liskov Substitution Principle
        objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program
    4. I - Interface Segregation Principle
        many client-specific interfaces are better than one general-purpose interface
    5. D - Dependency Inversion Principle
        one should “depend upon abstractions, [not] concretions.”
 */

class AirConditionerOld{
    func turnOn(){}
    func turnOff(){}
    func changeMode(){}
    func changeFanSpeed(){}
}


//1. Adding S - Single Responsibility Principle
protocol SwitchOption{
    func turnOn()
    func turnOff()
}
protocol  ModeOption {
    func changeMode()
}
protocol FanSpeedOption {
    func controlFanSpeed()
}

class Switch:SwitchOption{
    func turnOn() {
    }
    func turnOff() {
    }
}
class Mode:ModeOption{
    func changeMode() {
    }
}
class FanSpeed: FanSpeedOption {
    func controlFanSpeed() {
    }
}
class AirConditionerNew:SwitchOption,ModeOption,FanSpeedOption{
    let modeC:Mode = Mode()
    let switchC:Switch = Switch()
    let fanC:FanSpeed = FanSpeed()
    
    func turnOn() {
        switchC.turnOn()
    }
    func turnOff() {
        switchC.turnOff()
    }
    func changeMode() {
        modeC.changeMode()
    }
    func controlFanSpeed() {
        fanC.controlFanSpeed()
    }
}

//2. Adding O - Open/Closed Principle
protocol Humidable{
    func changeHumidity()
}

class Humidity:Humidable{
    func changeHumidity() {
        
    }
}

extension AirConditionerNew:Humidable{
    func changeHumidity(){
        let humiC:Humidity = Humidity()
        humiC.changeHumidity()
    }
}

//3. L - Liskov Substitution Principle
protocol CostOption{
    func costIs()
}
class Cost:CostOption{
    func costIs(){
    }
}
protocol ACFeatures:SwitchOption,ModeOption,FanSpeedOption,CostOption{
}

class AirConditionerUpdated:ACFeatures{
    let modeC:Mode = Mode()
    let switchC:Switch = Switch()
    let fanC:FanSpeed = FanSpeed()
    let costC:Cost = Cost()
    
    func turnOn() {
        switchC.turnOn()
    }
    func turnOff() {
        switchC.turnOff()
    }
    func changeMode() {
        modeC.changeMode()
    }
    func controlFanSpeed() {
        fanC.controlFanSpeed()
    }
    func costIs(){
        costC.costIs()
    }
}

//4. I - Interface Segregation Principle


//5. D - Dependency Inversion Principle
//High level modules should not depend on low level modules both should depend on Abstractions.







