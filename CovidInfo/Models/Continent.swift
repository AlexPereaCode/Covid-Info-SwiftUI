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
}

extension Continent: Identifiable {
    var id: UUID { return UUID() }
}
