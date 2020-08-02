import Foundation
import UIKit

protocol ViewToPresenterProtocol {
    var view: PresenterToViewProtocol? { get set }
    var interactor: PresenterToInteractorProtocol? { get set }
    var router: PresenterToRouterProtocol? { get set }
    func startFetchingNotice()
    func showMovieController(navigationController: UINavigationController)
    func getScreenWidth() -> CGFloat
    func getScreenHeight() -> CGFloat
}

protocol PresenterToViewProtocol {
    func showNotice(noticeModel: Cat)
    func showError()
    func getFrame() -> CGRect
}

protocol PresenterToRouterProtocol {
    static func createModule() -> ViewController
    func pushToMovieScreen(navigationController: UINavigationController)
}

protocol PresenterToInteractorProtocol {
    var presenter: InteractorToPresenterProtocol? { get set }
    func fetchNotice()
}

protocol InteractorToPresenterProtocol {
    func noticeFetchedSuccess(noticeModel: Cat)
    func noticeFetchFailed()
}