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
    let detail: String?
    let iconImage: UIImage
    let iconColor: UIColor

    init(type: SettingType, name: String, detail: String? = nil, iconImage: UIImage, iconColor: UIColor) {
        self.type = type
        self.name = name
        self.detail = detail
        self.iconImage = iconImage
        self.iconColor = iconColor
    }
}

extension Setting {
    static let networkSection = [
        Setting(type: .switcher, name: "Авиарежим", iconImage: UIImage(systemName: "airplane")!, iconColor: .systemOrange),
        Setting(type: .detailed, name: "Wi-Fi", detail: "Не подключено",  iconImage: UIImage(systemName: "wifi")!, iconColor: .systemBlue),
        Setting(type: .detailed, name: "Bluetooth", detail: "Вкл.",  iconImage: UIImage(named: "bluetooth")!, iconColor: .systemBlue),
        Setting(type: .plain, name: "Сотовая связь",  iconImage: UIImage(named: "cellular")!, iconColor: .systemGreen),
        Setting(type: .plain, name: "Режим модема",  iconImage: UIImage(systemName: "personalhotspot")!, iconColor: .systemGreen),
        Setting(type: .switcher, name: "VPN",  iconImage: UIImage(named: "vpn")!, iconColor: .systemGreen),
    ]
    static let soundsSection = [
        Setting(type: .plain, name: "Уведомления", iconImage: UIImage(named: "notification")!, iconColor: .systemRed),
        Setting(type: .plain, name: "Звуки, тактильные сигналы", iconImage: UIImage(systemName: "speaker.wave.3.fill")!, iconColor: .systemPink),
        Setting(type: .plain, name: "Не беспокоить", iconImage: UIImage(systemName: "moon.fill")!, iconColor: .systemPurple),
        Setting(type: .plain, name: "Экранное время", iconImage: UIImage(named: "sandclock")!, iconColor: .systemPurple),
    ]
    static let generalSection = [
        Setting(type: .plain, name: "Основные", iconImage: UIImage(systemName: "gear")!, iconColor: .systemGray),
        Setting(type: .plain, name: "Пункт управления", iconImage: UIImage(systemName: "switch.2")!, iconColor: .systemGray),
        Setting(type: .plain, name: "Экран и яркость", iconImage: UIImage(systemName: "character")!, iconColor: .systemBlue),
        Setting(type: .plain, name: "Экран «Домой»", iconImage: UIImage(systemName: "house.fill")!, iconColor: .systemBlue),
        Setting(type: .plain, name: "Универсальный доступ", iconImage: UIImage(systemName: "figure.wave.circle")!, iconColor: .systemBlue),
        Setting(type: .plain, name: "Обои", iconImage: UIImage(systemName: "photo.circle.fill")!, iconColor: .systemTeal),
        Setting(type: .plain, name: "Siri и поиск", iconImage: UIImage(systemName: "mic.circle.fill")!, iconColor: .systemGray),
        Setting(type: .plain, name: "Face ID & код-пароль", iconImage: UIImage(systemName: "faceid")!, iconColor: .systemGreen),
        Setting(type: .plain, name: "Экстренный вызов - SOS", iconImage: UIImage(systemName: "sos")!, iconColor: .systemRed),
    ]
}
