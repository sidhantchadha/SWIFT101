//Created by: Sidhant Chadha//
//Washington D.C- August 06 '18
//Initializers in Swift//
import UIKit

class Vehicle {
    //Default initialization, or the deligate initializer in this case//
    var nofwheels=0
    var description:String {
        return "No of wheels: \(nofwheels)"
    }
}

let someInst=Vehicle()
print(someInst.description)

//Define a subclass//

class Bike : Vehicle {
    //Init of Bike and Vehicle are same, hence override//
    override init() {
        super.init()
        nofwheels=2
    }
}

let anotherInst=Bike()
print("\(anotherInst.description)")


//Designated, Convenience and Automatic Initializers in action//
class Food {
    var name:String
    init(name:String) {
        self.name=name
    }
    
    convenience init() {
        self.init(name:"[Unnamed]")
    }
}

/*Food class provides a designated initializer that takes a single argument called name. This initializer can be used to create a new Food instance with a specific name as below. The Food class does not have a superclass, and so the init(name: String) initializer does not need to call super.init() to complete its initialization.

 */

let namedMeat=Food(name: "Pepperoni")
print(namedMeat.name)


let mysteryMeat=Food()
print(mysteryMeat.name)

class RecipeIngredient : Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity=quantity
        super.init(name:name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

/* The RecipeIngredient class has a single designated initializer, init(name: String, quantity: Int), which can be used to populate all of the properties of a new RecipeIngredient instance. This initializer starts by assigning the passed quantity argument to the quantity property, which is the only new property introduced by RecipeIngredient. After doing so, the initializer delegates up to the init(name: String) initializer of the Food class.
 */

/* The init(name: String) convenience initializer provided by RecipeIngredient takes the same parameters as the init(name: String) designated initializer from Food. Because this convenience initializer overrides a designated initializer from its superclass, it must be marked with the override modifier
 */

let oneMysteryItem = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)

class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? " ✔" : " ✘"
        return output
    }
}

/* Because it provides a default value for all of the properties it introduces and does not define any initializers itself, ShoppingListItem automatically inherits all of the designated and convenience initializers from its superclass.
 */

var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon"),
    ShoppingListItem(name: "Eggs", quantity: 6),
]
breakfastList[0].name = "Orange juice"
breakfastList[0].purchased = true
for item in breakfastList {
    print(item.description)
}
