//
//  GetAllContinentsUseCase.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 8/4/21.
//

import Foundation
import PromiseKit

class GetAllContinentsUseCase: Injectable {
        
    func execute() -> Promise<[Continent]> {
        return NetworkRequest<ContinentSpecs, [Continent]>.make(specs: .getAll)
    }
}
