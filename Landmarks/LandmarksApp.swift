//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Agrima Purakkal on 13/4/2024.
//
// @main attribute identifies the app's entry point.
import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
