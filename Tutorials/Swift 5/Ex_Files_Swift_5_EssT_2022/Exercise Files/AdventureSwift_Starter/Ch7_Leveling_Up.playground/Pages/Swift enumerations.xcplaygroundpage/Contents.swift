/*:
 # Swift Enumerations
 ---
 
 ## Topic Essentials
 Swift enumerations allow you to put related values together into a group that you can use and access. Like switch statements, each value in an enum is considered a different case, which is one of the many reasons they go so well together.
 
 ### Objectives
 + Declare a basic enum called **GameState**
 + Store an enum case as a variable and print out its value
 + Use a switch statement to define actions for each enum case
 + Understand default cases and the **@unknown** keyword
 
 [Next Topic](@next)
 
 */
// Declaring an enum
enum GameState {
    case Completed
    case Initializing
    case LoadingData
    case Restarting
}

// enum GameState { case Completed, Initalizing, LoadingData}

// Storing and switching on an enum value
var currentState = GameState.Completed
print("current state is \(currentState)")

switch currentState {
case .Completed:
    print("completed all taks")
case .Initializing:
    print("just starting man")
case .LoadingData:
    print("loading data, wait a while")
@unknown default:
    print("unkown game state detected")
}
