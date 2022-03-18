//
//  UserViewModel.swift
//  stealer
//
//  Created by Misha Causur on 18.03.2022.
//

import Foundation

protocol ViewModel: Routed {
    weak var viewController: Presenter? { get set }
}
protocol Presenter {
    var viewModel: ViewModel { get }
}

protocol UserViewInput {}

protocol UserViewOutput: ViewModel {}

struct UserViewModel: UserViewOutput {
    
    var router: Routing?
    
    var viewController: Presenter?
}
