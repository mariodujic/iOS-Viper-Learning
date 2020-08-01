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
        router?.pushToMovieScreen(navigationController: navigationController)
    }
}

extension Presenter: InteractorToPresenterProtocol {
    func noticeFetchedSuccess(noticeModel: Cat) {
        view?.showNotice(noticeModel: noticeModel)
    }

    func noticeFetchFailed() {
        view?.showError()
    }
}