//Conditional Statements//
import UIKit


//Basic switch case syntax//

let someNo=28
switch someNo {
case 1..<30:
    print("Number \(someNo) is less than 30")
default:
    print("Number \(someNo) is greater than 30")
}

//Tuples in switch statement and a use of fallthrough and break with value binding//

let point=(9,0)
switch point {
case (0,0):
    break;
case (let p,0):
    print("Point on X axis at \(p) distance")
    fallthrough
case (_,0):
    print("Accepted")
default:
    print("Not in graph!")

}

//Improvement with Where clause//

let point1=(9,-9)
switch point1 {
case (0,0):
    break;
case (let x,let y) where x == -y:
    print("Point on axis at \(x) distance from X axis and \(y) distance from Y axis")
    
case (_,0):
    print("Accepted")
default:
    print("Not in graph!")
    
}

//Switch statement with compound cases//
let a=3
switch a {
case 1,3,5,7:
    print("\(a) is prime number!")
default:
    print("Not prime!")
}

//Value binding with compound cases//
let point2=(0,9)
switch point2 {
case (let x,0),(0,let x):
    print("Point is on axis at \(x) distance")
default:
    print("Not on axis")
}


//Use of continue in example to remove vowels from a string//
let str="hi my name is sidhant"
var resStr=""
let vowels:[Character]=["a","e","i","o","u"]

for chr in str {
    if(vowels.contains(chr)) {
        continue
    }
    else {
        resStr.append(chr)
    }
}

print("String after removing vowels is \(resStr)")

//Using optional in switch statement//
let symbol:Character="&"
var possval:Int?
switch symbol {
case "1","!":
    possval=1
case "2","%":
    possval=2
case "3","&":
    possval=3
default:
    print("No value!")
    
}

print("Value of symbol is \(possval!)") //Unwrap to reveal value using exclamation !//


