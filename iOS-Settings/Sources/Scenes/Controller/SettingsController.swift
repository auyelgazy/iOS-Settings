//
//  ViewController.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 02.03.2023.
//

import UIKit
import SnapKit

final class SettingsController: UIViewController {

    private var settingsView: SettingsView? {
        guard isViewLoaded else { return nil }
        return view as? SettingsView
    }

    var model: SettingsModel?

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
        model = SettingsModel()
        view = SettingsView()
        setupView()
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



private extension SettingsController {
    func configureView() {
        guard let models = model?.createModels() else { return }
        models.forEach { [unowned self] model in
            settingsView?.configureView(with: model)
        }
    }
}
