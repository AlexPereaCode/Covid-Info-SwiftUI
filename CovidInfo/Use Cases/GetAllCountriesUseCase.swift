//
//  GetCountryUseCase.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 10/4/21.
//

import Foundation
import PromiseKit

class GetAllCountriesUseCase: Injectable {
        
    func execute() -> Promise<[Country]> {
        return NetworkRequest<CountrySpecs, [Country]>.make(specs: .getAllCountries)
    }
}
