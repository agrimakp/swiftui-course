//
//  CircleImage.swift
//  Landmarks
//
//  Created by Agrima Purakkal on 13/4/2024.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 15)
    }
}

#Preview {
    CircleImage(image: Image("tutlerock"))
}
