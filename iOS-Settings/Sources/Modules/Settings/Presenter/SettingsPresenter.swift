//
//  SettingsPresenter.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.04.2023.
//

import Foundation

final class SettingsPresenter {

    // MARK: - Properties

    private weak var view: SettingsViewInterface?
    private var router: SettingsRouterInterface?
    private var interactor: SettingsInteractorInterface?
    private var datas: [[Setting]]?

    // MARK: - Init

    init(view: SettingsViewInterface?, router: SettingsRouterInterface?, interactor: SettingsInteractorInterface?) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}

extension SettingsPresenter: SettingsPresenterInterface {

    // MARK: - Actions

    func notifyViewDidLoad() {
        view?.setupView()
        view?.setupHierarchy()
        view?.setupLayout()
        view?.setTitle(with: "Settings")
        fetchDatas()
    }

    func getSetting(_ section: Int, _ index: Int) -> Setting? {
        return datas?[section][index]
    }

    func fetchDatas() {
        datas = interactor?.datas
    }

    var getSectionCount: Int {
        datas?.count ?? 0
    }

    func getItemCount(in section: Int) -> Int {
        datas?[section].count ?? 0
    }

    func didTableViewSelectRow(indexPath: IndexPath) {
        guard let setting = datas[indexPath.section][indexPath.row] else { return }
        
    }
}
