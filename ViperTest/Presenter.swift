//
// Created by ground zero on 26/07/2020.
// Copyright (c) 2020 TrotterIndependent. All rights reserved.
//

import Foundation
import UIKit

class Presenter: ViewToPresenterProtocol {
    var view: PresenterToViewProtocol?

    var interactor: PresenterToInteractorProtocol?

    var router: PresenterToRouterProtocol?

    func startFetchingNotice() {
        interactor?.fetchNotice()
    }

    func showMovieController(navigationController: UINavigationController) {
        // router?.pushToMovieScreen(navigationController: navigationController)
    }
}

extension Presenter: InteractorToPresenterProtocol {
    func noticeFetchedSuccess(noticeModelArray: Array<NoticeModel>) {
        view?.showNotice(noticeArray: noticeModelArray)
    }

    func noticeFetchFailed() {
        view?.showError()
    }
}