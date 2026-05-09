import ArgumentParser

// Vapor is declared as a dependency but the main entry point uses ArgumentParser.
// The Vapor code path is imported but never exercised (unreachable from main).
@main
struct ExampleApp: ParsableCommand {
    func run() throws {
        print("example-swift-swiftpm running")
    }
}
