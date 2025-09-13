//
//  Image_ExplorationApp.swift
//  Image Exploration
//
//  Created by Jesús Ervin Chapi Suyo on 10/09/25.
//

import SwiftUI

@main
struct Image_ExplorationApp: App {
    var body: some Scene {
        WindowGroup {
           // ContentView()
            AppBootstrap.makeCharactersListView()
        }
    }
}
