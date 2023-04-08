//
//  SettingsBuilder.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.04.2023.
//

import Foundation

final class SettingsBuilder {
    static func build() -> SettingsView {
        let view = SettingsView()
        let router = SettingsRouter()
        let interactor = SettingsInteractor()
        let presenter = SettingsPresenter(view: view, router: router, interactor: interactor)

        view.presenter = presenter
        router.viewController = view

        return view
    }
}
