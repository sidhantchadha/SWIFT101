//Created by Sidhant Chadha//
//Washington D.C- August 04 '18//
//Enumerations in Swift//
import UIKit

//Declaring enums//
enum Matter {
    case solid
    case liquid
    case gas
}

var stateSelected=Matter.gas

//To check the set enum value, we use Switch case//
switch stateSelected {
case .solid:
    print("Solid selected")
case .liquid:
    print("Liquid selected")
case .gas:
    print("Gas selected")
}

//Once defined with a type, stateSelected can be altered without specifying the type again//
stateSelected = .liquid

//Check value
switch stateSelected {
case .solid:
    print("Solid selected")
case .liquid:
    print("Liquid selected")
case .gas:
    print("Gas selected")
}

//Enums with associated value. To store additional information//
enum Computer {
    case desktop(Int,String)
    case laptop(Int)
}

var compType=Computer.desktop(8, "3500Ghz")

switch compType {
case .desktop(let ram, let processor):
    print("Desktop with \(ram)GB RAM and \(processor) processor.")
case .laptop(let screenSize):
    print("Laptop with \(screenSize) Inches screen")
}

compType = .laptop(15)

switch compType {
case .desktop(let ram, let processor):
    print("Desktop with \(ram)GB RAM and \(processor) processor.")
case .laptop(let screenSize):
    print("Laptop with \(screenSize) Inches screen")
}
