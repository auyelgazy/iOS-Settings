//
//  SettingsRouterProtocol.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.04.2023.
//

import Foundation

protocol SettingsRouterInterface: AnyObject {
    func navigateToDetails(delegate: SettingDetailDelegate, setting: Setting)
}
