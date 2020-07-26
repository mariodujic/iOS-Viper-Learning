//
import Foundation
import Alamofire

class Interactor: PresenterToInteractorProtocol {
    var presenter: InteractorToPresenterProtocol? = nil

    func fetchNotice() {
        Alamofire.request(API_NOTICE_LIST).responseJSON { response in

            if(response.response?.statusCode == 200){
                debugPrint("Success")
            }else {
                debugPrint("Error")
                self.presenter?.noticeFetchFailed()
            }
        }
    }
}