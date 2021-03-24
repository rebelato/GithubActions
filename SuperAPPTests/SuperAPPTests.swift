//
//  SuperAPPTests.swift
//  SuperAPPTests
//
//  Created by lucas.r.rebelato on 24/03/21.
//

import XCTest
@testable import SuperAPP

class SuperAPPTests: XCTestCase {
    
    var sut: ViewController!

    override func setUp() {
        sut = ViewController()
    }

    override func tearDown() {
        sut = nil
    }

    func testViewColor() {
        XCTAssertEqual(sut.view.backgroundColor, .red)
    }

}
