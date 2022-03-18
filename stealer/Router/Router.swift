//
//  Router.swift
//  stealer
//
//  Created by Misha Causur on 18.03.2022.
//

import Foundation
import UIKit

struct Router: Routing {
    var navigationController: UINavigationController
    
    func router(_ route: Routes) {
        switch route {
        case .userFlow:
            userFlowRoute()
        case .detailFlow:
            print("detail")
        case .settingsFlow:
            print("settings")
        case .customerFlow:
            print("customer")
        }
    }
    
    private func userFlowRoute() {
        let viewController = UserViewController()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    private func detailFlowRoute() {
        
    }
    
    private func settingsFlowRoute() {
        
    }
    
    private func customerFlowRoute() {
        
    }
}
