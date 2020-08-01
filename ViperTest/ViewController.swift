import UIKit


class ViewController: UIViewController, PresenterToViewProtocol {

    var presenter: ViewToPresenterProtocol?

    var noticeArrayList: Array<NoticeModel> = Array()

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter?.startFetchingNotice()
        // presenter?.showMovieController(navigationController: navigationController!)
    }

    func showNotice(noticeArray: Array<NoticeModel>) {
        // Do something
    }

    func showError() {
        // Do something
    }
}