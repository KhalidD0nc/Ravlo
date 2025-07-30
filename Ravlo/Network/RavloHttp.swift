//
//  RavloHttp.swift
//  Ravlo
//
//  Created by Khalid R on 05/02/1447 AH.
//

import Foundation

class RavloHttp {
    static let shared = RavloHttp()
    private let session = URLSession.shared

    func request(endpoint: String,
                 method: String = "GET",
                 completion: @escaping (Data?, URLResponse?, Error?) -> Void) {

        let urlString = AppConfig.baseURL + endpoint
        guard let url = URL(string: urlString) else {
            completion(nil, nil, NSError(domain: "Invalid URL", code: -1))
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = method

        session.dataTask(with: request, completionHandler: completion).resume()
    }
}
