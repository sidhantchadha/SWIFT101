//Created by Sidhant Chadha
//Washington D.C - August 03 '18
//Closures in Swift- 6 types.

import UIKit

let array=["Sid","Varun","Rohit","Matt","Amon"]

//Normal closure form//
func revOrder(_ a: String, _ b: String) -> Bool {
    return  a   >   b
}

//Reverse sorted array stored in newArray variable. Sorted is included in Swift STL//
var newArray=array.sorted(by:revOrder)
//Printing new array//
for name in newArray {
    print(name)
}

print("")

//Closure expression syntax on same newArray, but normal sorting//

newArray=array.sorted(by: { (a:String,b:String)->Bool in return b > a})
for name in newArray {
    print(name)
}

print("")

//Auto inferred type from Closure expression//
newArray=array.sorted(by: {a,b in return a > b })
for name in newArray {
    print(name)
}

print("")

//Returning implicitly, i.e omit return keyword//
newArray=array.sorted(by: {a,b in b > a})
for name in newArray {
    print(name)
}

print("")


//Shorthand argument way//
newArray=array.sorted(by: { $0 > $1 })
for name in newArray {
    print(name)
}

print("")


//Operator method//
newArray=array.sorted(by: <)
for name in newArray {
    print(name)
}
