//
//  ImageFromURL.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 12/4/21.
//

import SwiftUI
import Combine

class ImageFromURL: ObservableObject {
    @Published var image = Image(systemName: "flag.slash")
    var subscriber = Set<AnyCancellable>()
    
    func getImage(url:URL) {
        URLSession.shared
            .dataTaskPublisher(for: url)
            .map(\.data)
            .compactMap { UIImage(data: $0) }
            .map { Image(uiImage: $0) }
            .replaceEmpty(with: Image(systemName: "flag.slash"))
            .replaceError(with: Image(systemName: "flag.slash"))
            .assign(to: \.image, on: self)
            .store(in: &subscriber)
    }
}
