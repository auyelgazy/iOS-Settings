//
//  SettingDetailView.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.04.2023.
//

import UIKit
import SnapKit

protocol SettingDetailViewInterface: AnyObject {
    func setTitle(with title: String)
    func setupView()
    func setupHierarchy()
    func setupLayout()
}

class SettingDetailView: UIViewController {

    var presenter: SettingDetailPresenterInterface?

    // MARK: - UI

    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.notifyViewDidLoad()
    }

}

extension SettingDetailView: SettingDetailViewInterface {
    func setTitle(with title: String) {
        self.title = title
    }

    func setupView() {
        view.backgroundColor = .red
    }

    func setupHierarchy() {

    }

    func setupLayout() {

    }


}

