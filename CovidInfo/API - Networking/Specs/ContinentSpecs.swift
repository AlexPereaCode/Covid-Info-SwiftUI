//
//  ContinentSpecs.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 8/4/21.
//

import Foundation
import Alamofire

enum ContinentSpecs {
    case getAll
}

extension ContinentSpecs: NetworkProviderSpecs {
    
    var path: String {
        switch self {
        case .getAll:
            return "continents"
        }
    }
    
    var method: Alamofire.HTTPMethod {
        return .get
    }
    
    var parameters: [String : Any]? {
        return nil
    }
}
