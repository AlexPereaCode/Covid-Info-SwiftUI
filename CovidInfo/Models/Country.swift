//
//  Country.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 10/4/21.
//

import Foundation

struct Country: Codable {
    let updated: Double
    let cases: Double
    let todayCases: Double
    let deaths: Double
    let todayDeaths: Double
    let recovered: Double
    let active: Double
    let critical: Double
    let tests: Double
    let population: Double
    let continent: String
    let country: String
    let countryInfo: CountryInfo
    
    
    func getRowValue(type: RowsType, country: Country) -> String {
        
        switch type {
        case .cases:
            return country.cases.withCommas()
        case .todayCases:
            return country.todayCases.withCommas()
        case .deaths:
            return country.deaths.withCommas()
        case .todayDeaths:
            return country.todayDeaths.withCommas()
        case .recovered:
            return country.recovered.withCommas()
        case .active:
            return country.active.withCommas()
        case .critical:
            return country.critical.withCommas()
        case .tests:
            return country.tests.withCommas()
        case .population:
            return country.population.withCommas()
        }
    }
}

struct CountryInfo: Codable {
    let lat: Double
    let long: Double
    let flag: URL
}

extension Country: Identifiable {
    var id: UUID { return UUID() }
}
