//
//  MainCoordinator.swift
//  CoordinatorApp
//
//  Created by lucas.r.rebelato on 09/07/20.
//  Copyright © 2020 Lucas Rebelato. All rights reserved.
//

import Coordinator
import UIKit

class MainCoordinator: Coordinator {

    var childCoordinators = [Coordinator]()
    var rootNavigationController: UINavigationController
    weak var parentCoordinator: Coordinator?

    init(navigationController: UINavigationController) {
        rootNavigationController = navigationController
        initialFlow()
    }

    func initialFlow() {
        let coordinator = FirstCoordinator(navigationController: rootNavigationController, title: "FirstViewController")
        nextCoordinator(coordinator: coordinator)
    }

}
