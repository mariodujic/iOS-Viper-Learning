import Foundation
import Alamofire

class Interactor: PresenterToInteractorProtocol {
    var presenter: InteractorToPresenterProtocol? = nil

    func fetchNotice() {
        Alamofire.request(BASE_URL, method: .get).responseJSON { response in

            if let value = response.result.value {
                self.onSuccess(value: value)
            } else {
                self.presenter?.noticeFetchFailed()
            }
        }
    }

    private func onSuccess(value: Any?) {
        let data = value as! [[String: Any]]
        let dict = data[0] as NSDictionary
        let cat = Cat(
                (dict.value(forKey: "url") as! String),
                (dict.value(forKey: "width") as! Int),
                (dict.value(forKey: "height") as! Int)
        )
        self.presenter?.noticeFetchedSuccess(noticeModel: cat)
    }
}