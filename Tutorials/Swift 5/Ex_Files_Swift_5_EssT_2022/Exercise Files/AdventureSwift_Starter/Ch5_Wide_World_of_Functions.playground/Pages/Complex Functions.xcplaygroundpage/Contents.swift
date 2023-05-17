/*:
 # Complex Functions
 ---
 
 ## Topic Essentials
 Functions in Swift can go from simple to complex very quickly with multiple return types, optionals, and even default values.
 
 ### Objectives
 + Create a new function with an optinal return type
 + Create a an overloaded function with two return values
 + Create another overloaded function with two parameters, both with default values
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Optional return value
func setupArenaMatch() -> Bool? {
    return nil
}

if let initSucess = setupArenaMatch()
{
    print("Level initilized: \(initSucess)")
} else {
    print("Something went terribly wrong...")
}
// Multiple return values
func setupArenaMatch(levelName: String) -> (sucess: Bool, secretItem: String) {
    print("\(levelName) initialized...")
    return (true, "Minotaur's Head")
}

var levelDetails = setupArenaMatch(levelName: "Poison Flats")
levelDetails.secretItem
levelDetails.sucess

// Default values
func setupDefaultMatch(levelName: String = "Fire Marshes", opponents: Int = 3) {
    print("Arena match will take place in the \(levelName) between \(opponents) players!")
}

setupDefaultMatch()
setupDefaultMatch(levelName: "dreadzilla", opponents: 10)
