//
//  Continent.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 8/4/21.
//

import Foundation

struct Continent: Codable {

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
    let countries: [String]
    
    
    func getRowValue(type: RowsType, continent: Continent) -> String {
        
        switch type {
        case .cases:
            return continent.cases.withCommas()
        case .todayCases:
            return continent.todayCases.withCommas()
        case .deaths:
            return continent.deaths.withCommas()
        case .todayDeaths:
            return continent.todayDeaths.withCommas()
        case .recovered:
            return continent.recovered.withCommas()
        case .active:
            return continent.active.withCommas()
        case .critical:
            return continent.critical.withCommas()
        case .tests:
            return continent.tests.withCommas()
        case .population:
            return continent.population.withCommas()
        }
    }
}

extension Continent: Identifiable {
    var id: UUID { return UUID() }
}
