//
//  SceneDelegate.swift
//  SuperAPP
//
//  Created by lucas.r.rebelato on 24/03/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    //var coordinator: MainCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        //let navigationController = UINavigationController()
        //coordinator = MainCoordinator(navigationController: navigationController)

        window = UIWindow(frame: .zero)
        window?.windowScene = windowScene
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
    }
    
}

