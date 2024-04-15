//
//  ContentView.swift
//  Landmarks
//
//  Created by Agrima Purakkal on 13/4/2024.
//
// By default swiftUI files declare a structure and a preview
import SwiftUI

struct ContentView: View {

    var body: some View {
      LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
