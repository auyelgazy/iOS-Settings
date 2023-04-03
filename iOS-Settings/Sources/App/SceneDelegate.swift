//
//  SceneDelegate.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 02.03.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        let rootVC = SettingsRouter.createModule(using: UINavigationController())
        let navigationController = UINavigationController(rootViewController: rootVC)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}

