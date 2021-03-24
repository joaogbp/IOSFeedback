import XCTest
@testable import LibraryFeedback

final class LibraryFeedbackTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LibraryFeedback().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
