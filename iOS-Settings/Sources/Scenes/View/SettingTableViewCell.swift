//
//  CustomTableViewCell.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 04.03.2023.
//

import UIKit
import SnapKit

final class SettingTableViewCell: UITableViewCell {

    private let setting: Setting
 
    // MARK: - Outlets

    private lazy var iconBackgroundView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 5
        view.backgroundColor = setting.iconColor.getColor
        return view
    }()

    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = setting.hasIconSystemName ? UIImage(systemName: setting.iconImageName) : UIImage(named: setting.iconImageName)
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = setting.name
        label.textColor = .label
        label.font = .systemFont(ofSize: 18)
        return label
    }()

    private lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.text = setting.detail
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 16)
        return label
    }()

    private lazy var switcher: UISwitch = {
        let switcher = UISwitch(frame: CGRect.zero)
        return switcher
    }()


    // MARK: - Initializers

    init(setting: Setting, reuseIdentifier: String?) {
        self.setting = setting
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        setupAccesoryView()
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) had not been implemented")
    }

    // MARK: - Setup

    private func setupAccesoryView() {
        switch setting.type {
        case .switcher:
            accessoryView = switcher
            selectionStyle = UITableViewCell.SelectionStyle.none
        default:
            accessoryType = .disclosureIndicator
        }
    }

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

    // MARK: - Reuse

    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.accessoryView = nil
    }
}

// MARK: - Extensions

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}
