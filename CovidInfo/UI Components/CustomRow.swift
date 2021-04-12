//
//  CustomRow.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 9/4/21.
//

import SwiftUI

struct CustomRow: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack() {
            Text("\(title):")
                .foregroundColor(Color(.teal))
                .fontWeight(.medium)
            Text(subtitle).fontWeight(.light)
        }
    }
}

struct CustomRow_Previews: PreviewProvider {
    static var previews: some View {
        CustomRow(title: "Test", subtitle: "10.000")
    }
}
