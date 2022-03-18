//
//  Routing.swift
//  stealer
//
//  Created by Misha Causur on 18.03.2022.
//

import Foundation
import UIKit

protocol Routing {
    var navigationController: UINavigationController { get }
    
    func router(_ route: Routes)
}
