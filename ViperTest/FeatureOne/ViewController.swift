import UIKit


class ViewController: UIViewController, PresenterToViewProtocol {

    var presenter: ViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter?.startFetchingNotice()
    }

    func showNotice(noticeModel: Cat) {
        debugPrint(noticeModel.url)
    }

    func showError() {
        debugPrint("Unable to fetch data")
    }
}