//
//  SettingsRouter.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.04.2023.
//

import UIKit

final class SettingsRouter: SettingsRouterInterface {

    weak var viewController: UIViewController?

    func navigateToDetails(delegate: SettingDetailDelegate, setting: Setting) {
        viewController?.navigationController?.pushViewController(SettingDetailBuilder.build(delegate: delegate,
                                                                  setting: setting), animated: true)
    }

//    func navigateToSettingDetails(_ setting: Setting) {
//        let view = SettingsView()
//        let vc = SettingDetailRouter.createModule(setting: Setting(type: .plain, name: "s", iconImage: "sdsai", iconColor: .green))
//        view.navigationController?.pushViewController(vc, animated: true)
//    }
}
