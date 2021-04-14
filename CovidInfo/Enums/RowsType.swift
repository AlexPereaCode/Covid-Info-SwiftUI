//
//  RowsType.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 14/4/21.
//

import Foundation

public enum RowsType: String, CaseIterable, Hashable {
    case cases = "Cases"
    case todayCases = "Today Cases"
    case deaths = "Deaths"
    case todayDeaths = "Today Deaths"
    case recovered = "Recovered"
    case active = "Active"
    case critical = "Critical"
    case tests = "Tests"
    case population = "Population"
}
