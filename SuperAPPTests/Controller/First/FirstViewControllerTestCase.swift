//
//  FirstViewControllerTestCase.swift
//  SuperAPPTests
//
//  Created by lucas.r.rebelato on 24/03/21.
//

import XCTest
@testable import SuperAPP

class FirstViewControllerTestCase: XCTestCase {
    
    var sut: FirstViewController!

    override func setUp() {
        sut = FirstViewController(title: "First")
    }

    override func tearDown() {
        sut = nil
    }

    func testTitleView() {
        XCTAssertEqual(sut.view.backgroundColor, .purple)
        XCTAssertEqual(sut.title, "First")
    }

}
