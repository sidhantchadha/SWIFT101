//Functions in Swift//
//Written by: Sidhant Chadha//
//Washington D.C- August 02 '18//

import UIKit

//Simple function//

//Defining//
func greeting(person:String) -> String {
    return "Hi " + person + "!"
}

//Calling//
print(greeting(person: "Sidhant"))


//Function without parameters//
func greet()->String {
    return "Hello"
}
//Calling
print(greet())

//Function with multiple parameters//
func greetNew(name:String,done:Bool) ->String {
    if done {
        return "Greeting done!"
    }
    else {
        return "Hellooo " + name + "!"
    }
}
//Calling
print(greetNew(name: "Sidhant", done: true))
print(greetNew(name: "Amon", done: false))


//Functions without return value//

func doSomething(name:String) {
    print("Hey there \(name).")
}
//Calling
doSomething(name: "Robert")

//Function with multiple return types//
func minMax(num:[Int]) ->(min:Int,max:Int) {
    var curmin=num[0]
    var curmax=num[0]
    for val in num[1..<num.count] {
        if val < curmin {
            curmin=val
        }
        else if val > curmax {
            curmax=val
        }
    }
    return (curmin,curmax)
}

//Calling//
let res=minMax(num:[2,3,7,1,10,56,34,99,103])
print("Maximum is \(res.max) and Minimum is \(res.min)")




//Optional tuple return type//

func minMax2(array:[Int]) -> (min:Int,max:Int)? {
    var cmax=array[0]
    var cmin=array[0]
    for value in array[1..<array.count] {
        if value < cmin {
        cmin=value
        }
        else if value > cmax {
            cmax=value
        }
    }
    return (cmin,cmax)
}

//Unwrap the whole tuple. Cannot unwrap single tuple values using ! symbol//
if let res1=minMax2(array:[2,3,7,11,10,56,34,99,109]) {
print("Maximum is \(res1.max) and Minimum is \(res1.min)")
}

//Function types- Made up of parameter types and return types//

func addtwo(_ a:Int,_ b:Int) -> Int {
    return a+b
}

//mathRes is a variable that has a function type which takes two int arguments and returns an int//
let mathRes : (Int,Int) -> Int = addtwo
print("Sum of two numebers is \(mathRes(3,4))")

//Function types as parameters//
func printMath(_ mathRes: (Int,Int)->Int, _ a:Int, _ b:Int) {
    
    print("Result is: \(mathRes(a,b))")
}

print("\(printMath(addtwo,7,7))")


//Function types as return type- Example using counter//
func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 10
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the stepBackward() function

print("Counting to zero:")
// Counting to zero:
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")

