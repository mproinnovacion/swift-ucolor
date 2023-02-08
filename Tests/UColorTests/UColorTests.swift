import Foundation
import XCTest
import SwiftUI
@testable import UColor


class UColorTests: XCTestCase {
	func testHex() {
		let color = UColor(rgba: "#9933ccff")
		XCTAssertEqual(color?.red, 0.6)
		XCTAssertEqual(color?.green, 0.2)
		XCTAssertEqual(color?.blue, 0.8)
		XCTAssertEqual(color?.opacity, 1.0)
		
		let invalid = UColor(rgba: "#hello")
		XCTAssertNil(invalid)
	}
	
	func testCreation() {
		XCTAssertEqual(UColor.white, UColor(red: 1, green: 1, blue: 1))
		XCTAssertEqual(UColor.black, UColor(red: 0, green: 0, blue: 0))
		XCTAssertEqual(UColor.red, UColor(red: 1, green: 0, blue: 0))
		XCTAssertEqual(UColor.green, UColor(red: 0, green: 1, blue: 0))
		XCTAssertEqual(UColor.blue, UColor(red: 0, green: 0, blue: 1))
	}
	
	
}
