import UIKit

var str = "Hello, Playground for Basic Operator"

//1. Assignment Operators
/*Unlike the assignment operator in C and Objective-C, the assignment operator in Swift does not itself return a value to enforce type safety.
 */
let variable = 0
let (a,b) = (0,0)


/*2. Arithmetic Operators
    1. Addition  +
    2. Subtraction -
    3. Multiplication *
    4. Division /
 
 Unlike the arithmetic operators in C and Objective-C, the Swift arithmetic operators don’t allow values to overflow by default.
 You can opt in to value overflow behavior by using Swift’s overflow operators to enforcce type safety.
 */
let addition = 3 + 5
let subtraction = 3 - 5
let multiplication = 3 * 5
let division = 3 / 5
//addition operator also supported
let strConcatation = "string1" + "string2"


//3. Overflow Operators
var potentialOverflow = Int16.max
// potentialOverflow equals 32767, which is the maximum value an Int16 can hold
//potentialOverflow += 1
// this causes an error

//Overflow addition &+
//Overflow subtraction &-
//Overflow multiplication &*


//4. Operator overloading
/*
 Classes and structures can provide their own implementations of existing operators.
 This is known as overloading the existing operators.
 */


//5. Bitwise NOT Operator
let number:Int = 4
print(~number)

let initialBits: UInt8 = 0b00001111
let invertedBits = ~initialBits
print(invertedBits)

//6. Bitwise AND Operator

//7. Bitwise OR Operator

//8. Bitwise XOR Operator

//9. Bitwise LEFT Operator

//10. Bitwise RIGHT Operator

//11. Remainder Operator
//Only takes into consideration sign of first operand for final result
let result1 = 11 % 2  //Output :
let result2 = -11 % 2 //Output : -1
let result3 = 11 % -2 //Output : 1


//12. Unary Minus Operator

//13. Unary Plus Operator

//14. Compound Assignment Operators

//15. Comparison Operators

//16. Ternary Conditional Operator

//17. Nil-Coalescing Operator
var a1:Int? = 5
a1 != nil ? " a1 is Not nil" : "Its Nil"

//18. Closed Range Operator

//19. Half-Open Range Operator

//20. One-Sided Ranges

//21. Logical NOT Operator

//22. Logical AND Operator

//23. Logical OR Operator

//24. Equivalence Operators









