//
//  ThirdCoordinator.swift
//  CoordinatorApp
//
//  Created by lucas.r.rebelato on 09/07/20.
//  Copyright © 2020 Lucas Rebelato. All rights reserved.
//

import Coordinator
import UIKit

class ThirdCoordinator: Coordinator {

    var childCoordinators = [Coordinator]()
    var rootNavigationController: UINavigationController
    weak var parentCoordinator: Coordinator?

    let title: String

    init(navigationController: UINavigationController = UINavigationController(), title: String = "Third") {
        self.title = title
        rootNavigationController = navigationController
        initialFlow()
    }

    private func initialFlow() {
        let viewController = ThirdViewController(title: title)
        nextViewController(vc: viewController, transitionStyle: .push)
    }

}

extension ThirdCoordinator {

    func handleEvent(with event: Event) {
        switch event as? ThirdEvent {
        case .first(let title):
            let coordinator = FirstCoordinator(navigationController: rootNavigationController, title: title)
            nextCoordinator(coordinator: coordinator)
        case .second(let title):
            let coordinator = SecondCoordinator(navigationController: rootNavigationController, title: title)
            nextCoordinator(coordinator: coordinator)
        case .back:
            parentCoordinator?.childDidFinish(self)
        default:
            break
        }
    }

}
