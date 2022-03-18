//
//  AppErrors.swift
//  stealer
//
//  Created by Misha Causur on 18.03.2022.
//

import Foundation

enum AppErrors: Error {
    case statusCode
    case invalidUserData
    case invalidImage
    case decoding
    case invalidURL
    case other(Error)
    
    static func map(_ error: Error) -> AppErrors {
        return (error as? AppErrors) ?? .other(error)
    }
}
