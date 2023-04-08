//
//  SettingDetailPresenter.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.04.2023.
//

import Foundation

final class SettingDetailPresenter {

    private weak var view: SettingDetailViewInterface?
    private var interactor: SettingDetailInteractorInterface?
    private var delegate: SettingDetailDelegate?
    private var setting: Setting?

    init(view: SettingDetailViewInterface?, interactor: SettingDetailInteractorInterface?, delegate: SettingDetailDelegate, setting: Setting) {
        self.view = view
        self.interactor = interactor
        self.delegate = delegate
        self.setting = setting
    }
}

extension SettingDetailPresenter: SettingDetailPresenterInterface {

    func notifyViewDidLoad() {
        print("notified detail")
        view?.setupView()
        view?.setupHierarchy()
        view?.setupLayout()
    }
}
