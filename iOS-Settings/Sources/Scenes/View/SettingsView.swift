//
//  SettingsView.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 22.03.2023.
//

import UIKit
import SnapKit

final class SettingsView: UIView {

    // MARK: - Configuration

    func configureView(with model: Setting) {

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

    // MARK: - Setup

    private func setupHierarchy() {
        self.addSubview(tableView)
    }

    private func setupLayout() {
        tableView.snp.makeConstraints {
            $0.top.right.bottom.left.equalTo(self)
        }
    }

    private func commonInit() {
        backgroundColor = .systemBackground
        setupHierarchy()
        setupLayout()
    }
}
