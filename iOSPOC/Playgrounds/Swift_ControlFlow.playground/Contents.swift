//: Playground - noun: a place where people can play
//Created On : XCode 11.0
// By : Rahul Goel CSE

import Cocoa

var str = "Hello, playground For Control Flow"

//1. For-in Loop
let cities = ["Gurgaon", "Noida","Seattle","Bangalore"]
    //1.
    for city in cities{
        print("\(city)")
    }
    //2.
    for (city,index) in cities.enumerated(){
        print("\(city) \(index)")
    }
    //3. To Print 1 to 10
    for index in 1...10{
        print(index)
    }


//2. While Loop
    //Iterating through cities array
    var index = 0
    while index < cities.count  {
        print(cities[index])
        index  = index + 1
    }


//3. If Conditions
    //Print all the even number from Range 1 to 50
    for index in 1...50 {
        if index%2 == 0{
            print(index)
        }
    }

//4. Switch Statement
    //No Implicit Fallthrough


//5. Control Transfer Statements
    //a. Continue   //b. Break
















