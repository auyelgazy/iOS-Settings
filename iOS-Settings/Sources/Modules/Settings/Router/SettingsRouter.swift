//
//  SettingsRouter.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.04.2023.
//

import UIKit

final class SettingsRouter: SettingsRouterInterface {

    static func createModule(using navigationController: UINavigationController) -> SettingsView {
        let router = SettingsRouter()
        let view = SettingsView()
        let interactor = SettingsInteractor()
        let presenter = SettingsPresenter(view: view, router: router, interactor: interactor)
        view.presenter = presenter
        return view
    }

//    func navigateToSettingDetails(_ setting: Setting) {
//        let view = SettingsView()
//        let vc = SettingDetailRouter.createModule(setting: Setting(type: .plain, name: "s", iconImage: "sdsai", iconColor: .green))
//        view.navigationController?.pushViewController(vc, animated: true)
//    }
}
