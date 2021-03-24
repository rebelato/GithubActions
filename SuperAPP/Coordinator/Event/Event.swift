//
//  Event.swift
//  CoordinatorApp
//
//  Created by lucas.r.rebelato on 09/07/20.
//  Copyright © 2020 Lucas Rebelato. All rights reserved.
//

import Coordinator
import Foundation

enum FirstEvent: Event {
    case second(String)
    case third(String)
    case back
}

enum SecondEvent: Event {
    case first(String)
    case third(String)
    case back
}

enum ThirdEvent: Event {
    case first(String)
    case second(String)
    case back
}
