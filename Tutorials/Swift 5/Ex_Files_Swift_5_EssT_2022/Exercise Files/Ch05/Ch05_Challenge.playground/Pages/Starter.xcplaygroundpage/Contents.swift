/*:
 # Chapter Challenge: Battle Grounds
 ---
 
 ### Tasks
 1. Create a type alias tuple called **Attack** with named values for name and damage
 2. Write a simple function called **attackEnemy** with an integer parameter that prints out an interpolated string
 3. Write an overloaded version of **attackEnemy** with a parameter of type Attack that returns an string
 4. Use both **attackEnemy** methods
 5. Create a type alias closure called **AttackClosure** that takes in an array of Attacks and returns void, then declare a test array of Attack values.
 6. Write a function called **fetchPlayerAttacks** that has a closure parameter of type AttackClosure and no return value
 7. Call **fetchPlayerAttacks** and loop through the array inside the closure body to print out its tuple values
 
 [Previous Topic](@previous)
 
 */
// 1
typealias Attack = (name:String, value: Int)

// 2
func attackEnemy(value: Int) {
    print("attack value with \(value) firepower")
}
// 3
func attackEnemy(attackType: Attack) -> String {
    print("attack value with \(attackType) firepower")
    return "\(attackType.name): \(attackType.value)"
}
// 4
attackEnemy(value: 12)
attackEnemy(attackType: ("Fireball", 20))
// 5
typealias AttackClosure = ([Attack]) -> Void
var testArray = [
    ("Fireball", 20),
    ("IceSpike", 22)
]
// 6
func fetchPlayerAttacks(closure: AttackClosure) {
    closure(testArray)
}
// 7
fetchPlayerAttacks { (attackOptions) in
    for (name, value) in attackOptions {
        print("\(name) will hit for \(value) if cast...")
    }
}
