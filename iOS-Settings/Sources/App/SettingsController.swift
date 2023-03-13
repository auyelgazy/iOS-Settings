//
//  ViewController.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 02.03.2023.
//

import UIKit
import SnapKit

final class SettingsController: UIViewController {

    private let settings: [[Setting]]

    // MARK: - Initializers
    
    init(settings: [[Setting]] = [Setting.networkSection, Setting.soundsSection, Setting.generalSection]) {
        self.settings = settings
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

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
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupView() {
        view.backgroundColor = .systemBackground
        title = "Настройки"
    }
    
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
        50
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        settings.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settings[section].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SettingTableViewCell
        let cellType = settings[indexPath.section][indexPath.row].type
        let switcher = UISwitch(frame: CGRectZero) as UISwitch
        switch cellType {
        case .switcher:
            cell?.accessoryView = switcher
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
        default:
            cell?.accessoryType = .disclosureIndicator
        }
        cell?.setting = settings[indexPath.section][indexPath.row]
        return cell ?? UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if settings[indexPath.section][indexPath.row].type == .switcher {
            return
        }
        tableView.deselectRow(at: indexPath, animated: true)
        let detailVC = DetailViewController(setting: settings[indexPath.section][indexPath.row])
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
