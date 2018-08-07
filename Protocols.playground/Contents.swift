//Created by : Sidhant Chadha//
//Washington D.C - August 07 '18
//Protocols in Swift//

import UIKit

protocol Walkable {
    var name: String {get set}
    func walk(steps : Int)
}

class Human: Walkable {
    var name="human"
    func walk(steps: Int) {
        print("\(self.name) is going for a walk")
    }
    func greet() {
        print("Hello!")
    }
}

class Dog: Walkable {
    var name="dog"
    func walk(steps: Int) {
        print("Walking the \(self.name) \(steps) steps")
    }
    func bark() {
        print("Woof")
    }
}

class PlayTime {
    func takeaWalk(walkable: Walkable) {
        print("\(walkable.name) is walking")
        walkable.walk(steps: 10)
        if let dog = walkable as? Dog {
            dog.bark()
        }
        else if let human=walkable as? Human {
            human.greet()
        }
    }
}

var playtime = PlayTime ()
var dog = Dog()
playtime.takeaWalk(walkable: dog)

var human = Human()
playtime.takeaWalk(walkable: human)



//Mutating method//
protocol ToggleAble {
    mutating func toggle()
}

enum OnOffSwitch:ToggleAble {
    case on
    case off
    mutating func toggle() {
        switch self {
        case .on:
            print("Turning off switch")
            self = .off
        case .off:
            self = .on
            print("Turning on switch")
        }
    }
}

var wallswitch=OnOffSwitch.off
wallswitch.toggle()
wallswitch=OnOffSwitch.on
wallswitch.toggle()
