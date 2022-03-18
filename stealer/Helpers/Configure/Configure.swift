//
//  Configure.swift
//  stealer
//
//  Created by Misha Causur on 18.03.2022.
//

import Foundation

protocol Configure {    
}

extension Configure where Self: AnyObject {
    func configure(_ block: (Self) throws -> Void) rethrows -> Self {
        try block(self)
        return self
    }
}
