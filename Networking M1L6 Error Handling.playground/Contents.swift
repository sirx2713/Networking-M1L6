import Foundation

// Method 1: Handle the error
do {
    try functionThatThrows()
}
catch {
    print("Encountered an error")
}

// Method 2: Ignore the error
try? functionThatThrows()

// Method 3: Crash
try! functionThatThrows()

func functionThatThrows() throws {
    
}

