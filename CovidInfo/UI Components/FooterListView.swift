//
//  FooterListView.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 10/4/21.
//

import SwiftUI

struct FooterListView: View {
    var updated: Double
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Last Update:")
                .foregroundColor(Color(.teal))
                .fontWeight(.medium)
            Text("\(Date(milliseconds: updated).stringDate)")
                .foregroundColor(.gray)
                .fontWeight(.medium)
                .font(.footnote)
        }
    }
}

struct FooterListView_Previews: PreviewProvider {
    static var previews: some View {
        FooterListView(updated: 1618070682834)
    }
}
