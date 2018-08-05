//Created by: Sidhant Chadha//
//Washington D.C- August 05 '2018//
//Classes and Structures in Swift//

import UIKit

//Declaring Class//
class Car {
    var color="Red"
    var year=2015
    
}


//Creating instance/object - CONSTANT//
let someInstance = Car()
print("Color of car is \(someInstance.color)")

//Classes are reference types. Any changes alters original members despite someInstance being Constant.//
someInstance.color="Green"
print("Color of car is \(someInstance.color)")


//Declaring Structure//
struct Computer {
    var ram=8
    var processor="3.2GHz"
}

//Creating instance/object- Cannot be CONSTANT because structures are value types. Has to be variable//
var someNewInstance = Computer()
print("Ram of computer is \(someNewInstance.ram)")

someNewInstance.ram=4
print("Ram of computer is \(someNewInstance.ram)")

//Memberwise initialization//
let abc=Computer(ram: 12, processor: "4.0GHz")
print("Ram is \(abc.ram) and processor is \(abc.processor)")

let someInst=abc
//Value is copied. Original value is not changed in structures. Since someInst is LET//
//following will not work//
/*
someInst.ram=14
someInst.processor="4.5GHz"
 */

var instNew=abc
instNew.ram=15
instNew.processor="4.5GHz"

//Now it works, because we made instNew a variable.  Class-instance will work with even let//
print("Ram is \(instNew.ram) and processor is \(instNew.processor)")



