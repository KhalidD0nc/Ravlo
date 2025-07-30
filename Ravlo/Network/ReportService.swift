//
//  ReportService.swift
//  Ravlo
//
//  Created by Khalid R on 05/02/1447 AH.
//

import Foundation

class ReportService {
    func fetchDailyReport(completion: @escaping (Result<Data, Error>) -> Void) {
        RavloHttp.shared.request(endpoint: "/reports/daily") { data, _, error in
            if let error = error {
                completion(.failure(error))
            } else if let data = data {
                completion(.success(data))
            }
        }
    }
}
