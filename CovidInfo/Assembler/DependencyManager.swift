//
//  DependencyManager.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 8/4/21.
//

import Foundation

class DependencyManager {
    private let getAllContinents: GetAllContinentsUseCase
    private let getAllCountries: GetAllCountriesUseCase
    
    init() {
        self.getAllContinents = GetAllContinentsUseCase()
        self.getAllCountries = GetAllCountriesUseCase()
        addDependencies()
    }
    
    private func addDependencies() {
        let resolver = Resolver.shared
        resolver.add(getAllContinents)
        resolver.add(getAllCountries)
    }
}
