//
//  ViewController.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 02.03.2023.
//

import UIKit
import SnapKit

class SettingsController: UIViewController {

    private var settings = [[Setting]]()

    // MARK: - Outlets

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(SettingTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        settings = [Setting.networkSection, Setting.soundsSection, Setting.generalSection]
        view.backgroundColor = .systemBackground
        title = "Настройки"
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(tableView)
    }

    private func setupLayout() {
        tableView.snp.makeConstraints {
            $0.top.right.bottom.left.equalTo(view)
        }
    }
}

// MARK: - Extensions

extension SettingsController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        settings.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings[section].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SettingTableViewCell
        let cellType = settings[indexPath.section][indexPath.row].type
        let switcher = UISwitch(frame: CGRectZero) as UISwitch
        switch cellType {
        case .switcher:
            cell?.accessoryView = switcher
        default:
            cell?.accessoryType = .disclosureIndicator
        }
        cell?.setting = settings[indexPath.section][indexPath.row]
        return cell ?? UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailVC = DetailViewController()
        detailVC.setting = settings[indexPath.section][indexPath.row]
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
