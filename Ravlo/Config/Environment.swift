//
//  X.swift
//  Ravlo
//
//  Created by Khalid R on 05/02/1447 AH.
//

import Foundation
enum Environment: String {
    case production = "Production"
    case dev = "Dev"
    case pre = "Pre"

    static var current: Environment {
        let value = Bundle.main.infoDictionary?["Environment"] as? String ?? ""
        return Environment(rawValue: value) ?? .production
    }

    var baseURL: String {
        switch self {
        case .production:
            return "https://ravlo/prod"
        case .dev:
            return "https://ravlo/dev"
        case .pre:
            return "https://ravlo/pre"
        }
    }
}
