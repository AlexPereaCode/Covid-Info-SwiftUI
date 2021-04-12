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
                            
                            CustomRow(title: "Cases", subtitle: "\(continent.cases.withCommas())")
                            CustomRow(title: "Today Cases", subtitle: "\(continent.todayCases.withCommas())")
                            CustomRow(title: "Deaths", subtitle: "\(continent.deaths.withCommas())")
                            CustomRow(title: "Today Deaths", subtitle: "\(continent.todayDeaths.withCommas())")
                            CustomRow(title: "Recovered", subtitle: "\(continent.recovered.withCommas())")
                            CustomRow(title: "Active", subtitle: "\(continent.active.withCommas())")
                            CustomRow(title: "Critical", subtitle: "\(continent.critical.withCommas())")
                            CustomRow(title: "Tests", subtitle: "\(continent.tests.withCommas())")
                            CustomRow(title: "Population", subtitle: "\(continent.population.withCommas())")
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
            print(error)
        }
    }
}

struct AllContinentsView_Previews: PreviewProvider {
    static var previews: some View {
        AllContinentsView()
    }
}

