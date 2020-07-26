//
// Created by ground zero on 25/07/2020.
// Copyright (c) 2020 TrotterIndependent. All rights reserved.
//

import Foundation
import UIKit

protocol ViewToPresenterProtocol {
    var view: PresenterToViewProtocol? { get set }
    var interactor: PresenterToInteractorProtocol? { get set }
    var router: PresenterToRouterProtocol? { get set }
    func startFetchingNotice()
    func showMovieController(navigationController: UINavigationController)
}

protocol PresenterToViewProtocol {
    func showNotice(noticeArray:Array<NoticeModel>)
    func showError()
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
    func noticeFetchedSuccess(noticeModelArray: Array<NoticeModel>)
    func noticeFetchFailed()
}