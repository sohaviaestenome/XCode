/*:
 # The SWITCH Statement
 ---
 
 ## Topic Essentials
 A switch statement takes a value and runs it against possible matching patterns, with each possible match having a different block of executable code. While that might sound boring, switch statements in Swift have a lot of features that make them excellent for decision logic.
 
 ### Objectives
 + Use a switch statement to execute different code for different **initial** values
 + Use a switch statement to evaluate multiple variables
 + Use value binding and the `where` keyword to add logic to more cases
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
let initial = "H"
let hp = 19
let mp = 2

// Simple switch
switch initial {
case "H":
    print("Harold?")
case "A":
    print("Anibal?")
default:
    print("não sei...")
}

// Complex variations
switch (mp, hp ) {
case(15,10):
    print("Great Job")
case(1...15, 20..<25):
    print("Ranges dude!")
case (let localMP, let localHP) where localMP + localHP > 20:
    print(localMP, localHP)
default:
    print("I've got nothing...")
}
