//
//  CountrySpecs.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 10/4/21.
//

import Foundation
import Alamofire

enum CountrySpecs {
    case getAllCountries
}

extension CountrySpecs: NetworkProviderSpecs {
    
    var path: String {
        switch self {
        case .getAllCountries:
            return "countries"
        }
    }
    
    var method: Alamofire.HTTPMethod {
        return .get
    }
    
    var parameters: [String : Any]? {
        return nil
    }
}
