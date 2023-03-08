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
            iconBackgroundView.backgroundColor = setting?.iconColor
        }
    }
 
    // MARK: - Outlets

    private lazy var iconBackgroundView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 5
        return view
    }()

    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
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
        iconBackgroundView.addSubview(iconImageView)
        contentView.addSubviews(
            iconBackgroundView,
            nameLabel,
            detailLabel
        )
    }

    private func setupLayout() {
        iconBackgroundView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(contentView).offset(16)
            $0.width.height.equalTo(30)
        }

        iconImageView.snp.makeConstraints {
//            $0.centerY.equalToSuperview()
            $0.top.equalToSuperview().offset(3)
            $0.trailing.equalToSuperview().offset(-3)
            $0.bottom.equalToSuperview().offset(-3)
            $0.leading.equalToSuperview().offset(3)
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
