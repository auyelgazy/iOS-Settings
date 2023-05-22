//
//  Setting.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.04.2023.
//

import UIKit

enum SettingType {
    case plain
    case detailed
    case switcher
}

enum Color: String {
    case orange
    case blue
    case green
    case red
    case purple
    case pink
    case gray
    case teal

    var getColor: UIColor {
        switch self {
        case .orange:
            return .systemOrange
        case .blue:
            return .systemBlue
        case .green:
            return .systemGreen
        case .red:
            return .systemRed
        case .purple:
            return .systemPurple
        case .pink:
            return .systemPink
        case .gray:
            return .systemGray
        case .teal:
            return .systemTeal
        }
    }
}

struct Setting {
    let type: SettingType
    let name: String
    let detail: String?
    let iconImageName: String
    let iconColor: Color
    let hasIconSystemName: Bool

    init(type: SettingType, name: String, detail: String? = nil, iconImage: String, iconColor: Color, hasIconSystemName: Bool = true) {
        self.type = type
        self.name = name
        self.detail = detail
        self.iconImageName = iconImage
        self.iconColor = iconColor
        self.hasIconSystemName = hasIconSystemName
    }
}

extension Setting {
    static let networkSection = [
        Setting(type: .switcher, name: "Авиарежим", iconImage: "airplane", iconColor: .orange),
        Setting(type: .detailed, name: "Wi-Fi", detail: "Не подключено",  iconImage:  "wifi", iconColor: .blue),
        Setting(type: .detailed, name: "Bluetooth", detail: "Вкл.",  iconImage:  "bluetooth", iconColor: .blue, hasIconSystemName: false),
        Setting(type: .plain, name: "Сотовая связь",  iconImage:  "cellular", iconColor: .green, hasIconSystemName: false),
        Setting(type: .plain, name: "Режим модема",  iconImage:  "personalhotspot", iconColor: .green),
        Setting(type: .switcher, name: "VPN",  iconImage:  "vpn", iconColor: .blue, hasIconSystemName: false),
    ]
    static let soundsSection = [
        Setting(type: .plain, name: "Уведомления", iconImage:  "notification", iconColor: .red, hasIconSystemName: false),
        Setting(type: .plain, name: "Звуки, тактильные сигналы", iconImage:  "speaker.wave.3.fill", iconColor: .pink),
        Setting(type: .plain, name: "Не беспокоить", iconImage:  "moon.fill", iconColor: .purple),
        Setting(type: .plain, name: "Экранное время", iconImage:  "sandclock", iconColor: .purple, hasIconSystemName: false),
    ]
    static let generalSection = [
        Setting(type: .plain, name: "Основные", iconImage:  "gear", iconColor: .gray),
        Setting(type: .plain, name: "Пункт управления", iconImage:  "switch.2", iconColor: .gray),
        Setting(type: .plain, name: "Экран и яркость", iconImage:  "character", iconColor: .blue),
        Setting(type: .plain, name: "Экран «Домой»", iconImage:  "house.fill", iconColor: .blue),
        Setting(type: .plain, name: "Универсальный доступ", iconImage:  "figure.wave.circle", iconColor: .blue),
        Setting(type: .plain, name: "Обои", iconImage:  "photo.circle.fill", iconColor: .teal),
        Setting(type: .plain, name: "Siri и поиск", iconImage:  "mic.circle.fill", iconColor: .gray),
        Setting(type: .plain, name: "Face ID & код-пароль", iconImage:  "faceid", iconColor: .green),
        Setting(type: .plain, name: "Экстренный вызов - SOS", iconImage:  "sos", iconColor: .red),
    ]
}
