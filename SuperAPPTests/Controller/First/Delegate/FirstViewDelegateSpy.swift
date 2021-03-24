//
//  FirstViewDelegateSpy.swift
//  SuperAPPTests
//
//  Created by lucas.r.rebelato on 24/03/21.
//

import UIKit

@testable import SuperAPP

internal class FirstViewDelegateSpy: FirstViewDelegate {
    
    private(set) var wasCalledDidTapSecond = false
    private(set) var wasCalledDidTapThird = false
    
    func didTapSecond() {
        wasCalledDidTapSecond = true
    }
    
    func didTapThird() {
        wasCalledDidTapThird = true
    }
}
