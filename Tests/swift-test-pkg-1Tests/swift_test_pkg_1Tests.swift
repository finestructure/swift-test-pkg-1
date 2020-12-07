import XCTest
@testable import swift_test_pkg_1

final class swift_test_pkg_1Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(swift_test_pkg_1().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
