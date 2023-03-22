//
//  SettingsModel.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 22.03.2023.
//

import Foundation

final class SettingsModel {

    func createModels() -> [Setting] {
        return [
            Setting(type: .plain, name: "Режим модема",  iconImage:  "personalhotspot", iconColor: .green),
        ]
    }
}
