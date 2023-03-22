//
//  SettingsView+Extensions.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 22.03.2023.
//

import UIKit

extension SettingsView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        settings.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settings[section].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = SettingTableViewCell(setting: settings[indexPath.section][indexPath.row], reuseIdentifier: "cell")
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard settings[indexPath.section][indexPath.row].type != .switcher else { return }
        tableView.deselectRow(at: indexPath, animated: true)
        let detailVC = DetailViewController(setting: settings[indexPath.section][indexPath.row])
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
