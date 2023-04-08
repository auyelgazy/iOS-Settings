//
//  SettingDetailBuilder.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.04.2023.
//

import Foundation

final class SettingDetailBuilder {
    static func build(delegate: SettingDetailDelegate, setting: Setting) -> SettingDetailView {
        let view = SettingDetailView()
        let interactor = SettingDetailInteractor()
        let presenter = SettingDetailPresenter(view: view, interactor: interactor, delegate: delegate, setting: setting)

        view.presenter = presenter

        return view
    }
}
