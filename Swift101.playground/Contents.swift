//Swift basic syntax
//Written by- Sidhant Chadha
//Washington D.C, USA- Aug 1 '2018//
import UIKit

//Declaring variables//

//Method 1- Type inference detects data type automatically//
var x="Hello World"                                     //String infered//
var y=28                                                //Integer infered//
var z="A"                                               //Character infered, but actually a String literal//

//Method 2- Defining data types within declaration//
var a:String="Hello again world!"
var b:Int=8
var c:Character="Z"

//Declaring constants (Replace var keyword with let)//
let m="I am a constant"
let n=88
let p="P"

//Printing on the debug area. A line break is automatically appeneded to the end of print line//
print(x)
print(y)
print(z)

print(a)
print(b)
print(c)

//To print x,y,z,a,b,c,m,n,p all together in one print command, we use String Interpolation//
print("x is \(x), y is \(y), z is \(z), a is \(a), b is \(b), c is \(c), m is \(m), n is \(n), p is \(p)")

//Using optionals//
var possibleInt="123"
var convertedInt=Int(possibleInt)

//The value of integer is wrapped. To print the unwrapped optional value//
//we use exclamation mark '!' after variable name//
print(convertedInt!)

//If the optional was a string of literals we cannot convert it to integer.//
//But since it is an optional, it will take up absence of value, i.e nil.//
//No need to unwrap because there is no value, i.e absence of value=nil//
var t="Hi"
var s=Int(t)
print(s)

