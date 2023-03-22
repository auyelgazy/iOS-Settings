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

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    // MARK: - Setup

    private func setupView() {
        model = SettingsModel()
        view = SettingsView()
        configureView()
        view.backgroundColor = .systemBackground
        title = "Настройки"
    }
}

// MARK: - Extensions

private extension SettingsController {
    private func configureView() {
        guard let settings = model?.createModels() else { return }
        settingsView?.configureView(with: settings)
    }
}
