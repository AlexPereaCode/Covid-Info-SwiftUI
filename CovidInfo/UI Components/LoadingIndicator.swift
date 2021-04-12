//
//  LoadingIndicator.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 9/4/21.
//

import SwiftUI

struct LoadingIndicator: View {
    var text: String
    
    init(text: String) {
        self.text = text
    }
    var body: some View {
        VStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            ProgressView(self.text)
                .progressViewStyle(CircularProgressViewStyle(tint: Color.black))
                .foregroundColor(.black)
                .font(.footnote)
        })
    }
}

struct LoadingIndicator_Previews: PreviewProvider {
    static var previews: some View {
        LoadingIndicator(text: "Loading Data")
    }
}
