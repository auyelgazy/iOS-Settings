//
//  SettingsInteractor.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.04.2023.
//

import Foundation

final class SettingsInteractor: SettingsInteractorInterface {

    var datas: [[Setting]] {
        return [Setting.networkSection, Setting.soundsSection, Setting.generalSection]
    }
}
