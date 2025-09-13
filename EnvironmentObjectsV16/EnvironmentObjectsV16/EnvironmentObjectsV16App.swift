//
//  EnvironmentObjectsV16App.swift
//  EnvironmentObjectsV16
//
//  Created by Jesús Ervin Chapi Suyo on 2/05/25.
//

import SwiftUI

@main
struct EnvironmentObjectsV16App: App {
    @State private var personViewModel = PersonViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(personViewModel)
        }
    }
}
