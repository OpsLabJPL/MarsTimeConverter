import XCTest
@testable import MarsTimeConverter

final class MarsTimeConverterTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MarsTimeConverter().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
