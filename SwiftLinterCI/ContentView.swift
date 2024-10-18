import SwiftUI

struct ContentView: View {
    @State private var name = "SwiftLint Example"

    // This line exceeds the recommended maximum line length (commonly 100 characters)
    let longText = "This is an example of a line of text that exceeds the maximum recommended line length for SwiftLint, and should trigger a linting error."

    var body: some View {
        VStack {
            Text(name)
                .padding()

            // Violates the force unwrapping rule (force unwrapping discouraged)
            let number: Int? = 42
            Text("Number: \(number!)") // Force unwrapping of an optional
            
            // Single letter variable name (violates identifier naming conventions)
            let a = 100
            Text("Value of a: \(a)")

            // Violates trailing whitespace rule (extra space at the end of this line)
            Text("Trailing whitespace here... ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
