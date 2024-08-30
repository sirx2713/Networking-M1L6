import Foundation

var greeting:String? = "Hello"

if greeting != nil {
    print(greeting!)
}

// Optional Binding
if let greetingValue = greeting {
    print(greetingValue)
}

struct Person {
    var name: String?
    
    func walk() {
        
    }
}

// Optionals work with structures too
var me:Person? = nil

// Checking for nil before unwrapping and using instance
if me != nil {
    me!.walk()
}
// Optional Chaining with method
me?.walk()

// Optional Chaining with property with nil coalescing operator
me?.name ?? "Default Name"

