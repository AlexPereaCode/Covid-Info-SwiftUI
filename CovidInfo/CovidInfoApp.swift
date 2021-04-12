//
//  CovidInfoApp.swift
//  CovidInfo
//
//  Created by Alejandro Perea Navarrete on 7/4/21.
//

import SwiftUI

@main
struct CovidInfoApp: App {

    @Environment(\.scenePhase) var scenePhase
    private let manager = DependencyManager()
    
    var body: some Scene {
        WindowGroup {
            AllContinentsView()
        }

        .onChange(of: scenePhase) { newScenePhase in
            switch newScenePhase {
            case .active:
                print("App is active")
            case .inactive:
                print("App is inactive")
            case .background:
                print("App is in background")
            @unknown default:
                print("Oh - interesting: I received an unexpected new value.")
            }
        }
    }
}
