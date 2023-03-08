//
//  Setting.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 08.03.2023.
//

import UIKit

enum SettingType {
    case plain
    case detailed
    case switcher
}

struct Setting {
    let type: SettingType
    let name: String
    let detail: String? = nil
    let iconImage: UIImage
    let iconColor: UIColor
}

extension Setting {
    static let networkSection = [
        Setting(type: .switcher, name: "Авиарежим", iconImage: UIImage(systemName: "airplane")!, iconColor: .systemOrange)
    ]
    static let soundsSection = [
        Setting(type: .switcher, name: "Авиарежим", iconImage: UIImage(systemName: "airplane")!, iconColor: .systemOrange)
    ]
    static let generalSection = [
        Setting(type: .switcher, name: "Авиарежим", iconImage: UIImage(systemName: "airplane")!, iconColor: .systemOrange)
    ]
}
