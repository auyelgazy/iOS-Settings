//
//  SettingsPresenterProtocol.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.04.2023.
//

import Foundation

protocol SettingsPresenterInterface: AnyObject {
    func notifyViewDidLoad() -> Void
    func getDataByIndex(_ section: Int, _ index: Int) -> Setting?
    func fetchDatas() -> Void
    func getItemCount(section: Int) -> Int
    var getSectionCount: Int { get }
}
