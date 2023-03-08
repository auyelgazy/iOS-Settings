//
//  CustomTableViewCell.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 04.03.2023.
//

import UIKit
import SnapKit

class SettingTableViewCell: UITableViewCell {

    var setting: Setting? {
        didSet {
            nameLabel.text = setting?.name
            detailLabel.text = setting?.detail
            iconImageView.image = setting?.iconImage
        }
    }

    // MARK: - Outlets

    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        imageView.backgroundColor = .orange
        imageView.tintColor = .white
        return imageView
    }()

    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 18)
        return label
    }()

    private lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 16)
        return label
    }()


    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) had not been implemented")
    }

    // MARK: - Setup

    private func setupHierarchy() {
        contentView.addSubviews(
            iconImageView,
            nameLabel,
            detailLabel
        )
    }

    private func setupLayout() {
        iconImageView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(contentView).offset(16)
            $0.width.height.equalTo(30)
        }

        nameLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(iconImageView.snp.trailing).offset(16)
        }

        detailLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.trailing.equalTo(contentView.snp.trailing).offset(-10)
        }
    }
}

// MARK: - Extensions

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}
