//
//  Networker.swift
//  stealer
//
//  Created by Misha Causur on 18.03.2022.
//

import Foundation
import Combine

struct Networker {
    static let shared = Networker()
    
    func loadImages(_ url: [Links]) -> AnyPublisher<Response, AppErrors> {
        let urls = url.compactMap { URL.init(string: $0.rawValue) }
        let config = URLSessionConfiguration.default
        config.requestCachePolicy = .reloadIgnoringLocalCacheData
        config.urlCache = nil
        let session = URLSession(configuration: config)
        for link in urls {
            var urlRequest = URLRequest(url: link)
            urlRequest.addValue("Accept-Version", forHTTPHeaderField: "v1")
        }
        return session.dataTaskPublisher(for: urls[0])
          .tryMap { response -> Data in
            guard
              let httpURLResponse = response.response as? HTTPURLResponse,
              httpURLResponse.statusCode == 200
              else {
                throw AppErrors.statusCode
            }
            return response.data
          }
          .decode(type: Response.self, decoder: JSONDecoder())
          .mapError { AppErrors.map($0) }
          .eraseToAnyPublisher()
      }
}
