//
//  SettingsModel.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 22.03.2023.
//

import Foundation

final class SettingsModel {
    func createModels() -> [[Setting]] {
        return [
            Setting.networkSection,
            Setting.soundsSection,
            Setting.generalSection
        ]
    }
}
