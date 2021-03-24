//
//  FirstViewTestCase.swift
//  SuperAPPTests
//
//  Created by lucas.r.rebelato on 24/03/21.
//

import XCTest
@testable import SuperAPP

class FirstViewTestCase: XCTestCase {
    
    var sut: FirstView!

    override func setUp() {
        sut = FirstView()
    }

    override func tearDown() {
        sut = nil
    }

    func testInitialState() {
        XCTAssertNil(sut.delegate)
    }
    
    func testDelegate() {
        let delegate = FirstViewDelegateSpy()
        sut.delegate = delegate
        XCTAssertNotNil(sut.delegate)
        
        sut.pressSecondViewButton()
        sut.pressThirdViewButton()
        XCTAssertTrue(delegate.wasCalledDidTapSecond)
        XCTAssertTrue(delegate.wasCalledDidTapThird)
    }

}
