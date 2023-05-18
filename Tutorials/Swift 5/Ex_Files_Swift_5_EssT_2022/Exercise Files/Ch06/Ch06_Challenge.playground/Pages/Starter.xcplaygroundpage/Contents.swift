/*:
 # Chapter Challenge: Inventory Management
 ---
 
 ### Tasks
 1. Create a class called **Item** and declare properties for **name**, **price**
 2. Declare a default initializer and set the instance properties
 3. Create a struct called **BonusEffect** and declare an integer property named **bonus**
 4. Add an optional **BonusEffect** property to **Item** named **secret**
 5. Create a new class called **Inventory** with an Items array property named **storedItems**
 6. Declare a default initializer that takes in an array of Items and assigns them to **storedItems**
 7. Create a **BonusEffect** and two **Ite** instances and assign the bonus effect as one items **secret**
 8. Create an **Inventory** instance, initialize it with the item and weapon, and use optional chaining to unwrap one of the items **bonus** value
 
 [Previous Topic](@previous)
 
 */
// 1
class Item {
    var name: String
    var price: Int
    var secret: BonusEffect?
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
    
}
// 2

// 3
struct BonusEffect {
    var bonus: Int
    
}
// 4

// 5
class Inventory {
    var storedItems: [Item]
    
    init(storedItems: [Item]){
        self.storedItems = storedItems
    }
}
// 6

// 7
var bonusInst = BonusEffect(bonus: 2)
var item1 = Item(name: "Coisa", price: 3)
var item2 = Item(name: "cena", price: 4)

print(bonusInst.bonus)
item2.secret = bonusInst

// 8
var invent1 = Inventory(storedItems: [item1, item2])

if let itemPower = invent1.storedItems[1].secret?.bonus {
    print("Item 2 has a bonus effect of \(itemPower)")
} else {
    print("item has no secret effect")
}
