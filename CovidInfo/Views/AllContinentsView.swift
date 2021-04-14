//
//  AllContinentsView.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 9/4/21.
//

import SwiftUI

struct AllContinentsView: View {
    
    @Inject var getAllContinentsUseCase: GetAllContinentsUseCase
    @State var continents = [Continent]()
    @State var isLoading: Bool = true
    
    var body: some View {
        NavigationView {
            if isLoading {
                LoadingIndicator(text: "Loading Continents")
            } else {
                List {
                    ForEach(continents) { continent in
                        Section(header: Text(continent.continent), footer: FooterListView(updated: continent.updated)) {
                            
                            NavigationLink(destination: CountriesListView(continent: continent.continent, countries: continent.countries)) {
                                Text("Countries Detail")
                                    .foregroundColor(Color(.teal))
                                    .fontWeight(.heavy)
                            }
                            .accentColor(Color(.teal))
                            
                            ForEach(RowsType.allCases, id: \.self) { type in
                                CustomRow(title: type.rawValue, subtitle: continent.getRowValue(type: type, continent: continent))
                            }
                        }
                        .accentColor(.white)
                    }
                }
                .navigationTitle("Continents")
            }
        }
        .onAppear() {
            getContinents()
        }
        .navigationBarColor(backgroundColor: .teal, tintColor: .white)
    }
    
    private func getContinents() {
        getAllContinentsUseCase.execute().done { (continents) in
            self.continents = continents
            self.isLoading = false
        }.catch { (error) in
            AlertError.showAlertError(type: .allContinents, message: error.localizedDescription)
        }
    }
}

struct AllContinentsView_Previews: PreviewProvider {
    static var previews: some View {
        AllContinentsView()
    }
}

