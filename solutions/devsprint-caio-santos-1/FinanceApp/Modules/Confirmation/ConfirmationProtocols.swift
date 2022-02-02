//
//  ConfirmationProtocols.swift
//  FinanceApp
//
//  Created by Hyago Henrique on 01/02/22.
//

import Foundation
import UIKit

protocol ConfirmationPresenterProtocol {
    
    var view: ConfirmationPresenterDelegate? { get set }
    var interactor: ConfirmationInteractorProtocol? { get set }
    var router: ConfirmationRouterProtocol? { get set }
    
    func viewDidLoad()
}

protocol ConfirmationRouterProtocol {
    
    static func createModule() -> UINavigationController
    func navigateToNewModule()
}

protocol ConfirmationInteractorProtocol {
    
    var presenter: ConfirmationInteractorDelegate? { get set }
    func fetchData()
}
