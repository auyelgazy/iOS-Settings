//
//  DetailViewController.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.03.2023.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController {

    var setting: Setting?

    // MARK: - Outlets

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = setting?.iconImage
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = setting?.name
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

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
