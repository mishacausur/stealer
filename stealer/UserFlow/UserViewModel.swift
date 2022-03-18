//
//  UserViewModel.swift
//  stealer
//
//  Created by Misha Causur on 18.03.2022.
//

import Foundation

protocol ViewModel: Routed {
    var viewController: Presenter? { get set }
}
protocol Presenter: AnyObject {
    var viewModel: ViewModel { get }
}

protocol UserViewInput {}

protocol UserViewOutput: ViewModel {}

class UserViewModel: UserViewOutput {
    
    var router: Routing?
    
    weak var viewController: Presenter?
}
