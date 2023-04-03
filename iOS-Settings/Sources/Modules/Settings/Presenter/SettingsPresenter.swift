//
//  SettingsPresenter.swift
//  iOS-Settings
//
//  Created by Kuanysh al-Khattab Auyelgazy on 03.04.2023.
//

import Foundation

final class SettingsPresenter {

    private weak var view: SettingsViewInterface?
    private var router: SettingsRouterInterface?
    private var interactor: SettingsInteractorInterface?
    private var datas: [[Setting]]?

    init(view: SettingsViewInterface?, router: SettingsRouterInterface?, interactor: SettingsInteractorInterface?) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}

extension SettingsPresenter: SettingsPresenterInterface {

    func notifyViewDidLoad() {
        view?.setupView()
        view?.setupHierarchy()
        view?.setupLayout()
        view?.setTitle(with: "Settings")
        fetchDatas()
    }

    func getDataByIndex(_ section: Int, _ index: Int) -> Setting? {
//        print(datas![section][index].name)
//        print("Sectinon:  \(section)")
//        print("Index: \(index)")
//        print("end - - - - - - \n")
        return datas?[section][index]
    }

    func fetchDatas() {
        datas = interactor?.datas
    }

    var getSectionCount: Int {
        datas?.count ?? 0
    }

    func getItemCount(section: Int) -> Int {
        datas?[section].count ?? 0
    }
}
