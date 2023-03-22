//
//  SettingsView.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 22.03.2023.
//

import UIKit
import SnapKit

final class SettingsView: UIView {

    var settings = [[Setting]]()

    // MARK: - Configuration

    func configureView(with model: [[Setting]]) {
        self.settings = model
    }

    // MARK: - UI Elements

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(SettingTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()

    // MARK: - Initializers

    init() {
        super.init(frame: .zero)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        backgroundColor = .systemBackground
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        self.addSubview(tableView)
    }

    private func setupLayout() {
        tableView.snp.makeConstraints {
            $0.top.right.bottom.left.equalTo(self)
        }
    }
}
