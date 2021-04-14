//
//  CountryDetailView.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 10/4/21.
//

import SwiftUI
import Combine

struct CountryDetailView: View {
    
    @Inject var getAllCountriesUseCase: GetAllCountriesUseCase
    @State var country: Country!
    @State var isLoading: Bool = true
    @ObservedObject var flagImage = ImageFromURL()
    let countryName: String
    
    var body: some View {
        
        if isLoading {
            LoadingIndicator(text: "Loading Continents")
                .onAppear() {
                    getCountry()
                }
        } else {
            List {
                ForEach(RowsType.allCases, id: \.self) { type in
                    CustomRow(title: type.rawValue, subtitle: country.getRowValue(type: type, country: country))
                }
                FooterListView(updated: country.updated)
                flagImage.image
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color.black.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 3.0, y: 3.0)
                    .padding(EdgeInsets(top: 15.0, leading: 0.0, bottom: 15.0, trailing: 0.0))
            }
            .onAppear() {
                flagImage.getImage(url: country.countryInfo.flag)
            }
            .navigationTitle(countryName)
        }
    }
    
    private func getCountry() {
        getAllCountriesUseCase.execute().done { (countriesData) in
            guard let country = countriesData.first(where: { $0.country == countryName }) else { return }
            self.country = country
            isLoading = false
        }.catch { (error) in
            AlertError.showAlertError(type: .allCountries, message: error.localizedDescription)
        }
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(countryName: "Spain")
    }
}
