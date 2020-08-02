import UIKit


class ViewController: UIViewController, PresenterToViewProtocol {

    var presenter: ViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadInitialViews()
        presenter?.startFetchingNotice()
    }

    private func loadInitialViews() {
        self.view.backgroundColor = .white
        self.navigationItem.title = FEATURE_ONE_TITLE
    }

    func showNotice(noticeModel: Cat) {
        debugPrint(noticeModel.url)
        let imgView: UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: presenter!.getScreenWidth(), height: presenter!.getScreenHeight()))
        let url = URL(string: noticeModel.url!)
        let data = try? Data(contentsOf: url!)
        imgView.image = UIImage(data: data!)
        self.view.addSubview(imgView)
    }

    func showError() {
        debugPrint("Unable to fetch data")
    }

    func getFrame() -> CGRect {
        return self.view.frame
    }
}