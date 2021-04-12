//
//  CountriesListView.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 10/4/21.
//

import SwiftUI

struct CountriesListView: View {
    
    var continent: String
    var countries: [String]
    
    var body: some View {
        
        List {
            ForEach(countries, id: \.self) { country in
                NavigationLink(destination: CountryDetailView(countryName: country)) {
                    Text(country)
                        .foregroundColor(Color(.teal))
                        .fontWeight(.heavy)
                }
            }
            .listStyle(GroupedListStyle())
        }
        .navigationTitle(continent)
    }
}

struct CountriesListView_Previews: PreviewProvider {
    static var previews: some View {
        CountriesListView(continent: "Europe", countries: ["Spain", "France", "Germany", "Italy"])
    }
}
