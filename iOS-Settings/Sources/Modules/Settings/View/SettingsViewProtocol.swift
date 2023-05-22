//
//  SettingsViewProtocol.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.04.2023.
//

import Foundation

protocol SettingsViewInterface: AnyObject {
    func setupView()
    func setupHierarchy()
    func setupLayout()
    func setTitle(with title: String)
}
