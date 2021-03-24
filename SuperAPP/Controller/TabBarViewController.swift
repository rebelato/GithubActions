//
//  TabBarViewController.swift
//  CoordinatorApp
//
//  Created by lucas.r.rebelato on 05/08/20.
//  Copyright © 2020 Lucas Rebelato. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    let firstCoordinator = FirstCoordinator()
    let secondCoordinator = SecondCoordinator()
    let thirdCoordinator = ThirdCoordinator()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }

    private func setupTabBar() {
        let controllers = [firstCoordinator.rootNavigationController, secondCoordinator.rootNavigationController, thirdCoordinator.rootNavigationController]
        let icons: [UITabBarItem.SystemItem] = [.bookmarks, .contacts, .downloads]

        for (index, controller) in controllers.enumerated() {
            controller.tabBarItem = UITabBarItem(tabBarSystemItem: icons[index], tag: index)
        }

        viewControllers = controllers
    }

}
