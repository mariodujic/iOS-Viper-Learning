import UIKit

class Router: PresenterToRouterProtocol {

    static func createModule() -> ViewController {
        debugPrint("Created ViewController")
        var view = ViewController()
        var presenter: ViewToPresenterProtocol & InteractorToPresenterProtocol = Presenter()
        var interactor: PresenterToInteractorProtocol = Interactor()
        var router: PresenterToRouterProtocol = Router()

        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        return view
    }

    func pushToMovieScreen(navigationController: UINavigationController) {

        let module = Router.createModule()
        navigationController.pushViewController(module, animated: true)
    }
}