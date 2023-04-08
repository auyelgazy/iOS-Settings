//
//  SettingsView+Extensions.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 22.03.2023.
//

import UIKit

extension SettingsView: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        presenter.getSectionCount
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.getItemCount(in: section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.identifier, for: indexPath) as? SettingTableViewCell
        cell?.configureCell(with: presenter.getSetting(indexPath.section, indexPath.row))
        return cell ?? UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didTableViewSelectRow(indexPath: indexPath)
    }
}
