//
//  DetailViewController.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.03.2023.
//

import UIKit
import SnapKit

final class DetailViewController: UIViewController {

    private let setting: Setting

    // MARK: - Initializers

    init(setting: Setting) {
        self.setting = setting
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Outlets

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = setting.hasIconSystemName ? UIImage(systemName: setting.iconImageName) : UIImage(named: setting.iconImageName)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupView() {
        view.backgroundColor = .lightGray
    }

    private func setupHierarchy() {
        view.addSubview(imageView)
    }

    private func setupLayout() {
        imageView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.height.equalTo(100)
        }
    }
}
