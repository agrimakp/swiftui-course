//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Agrima Purakkal on 14/4/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        
    }
    var body: some View {
        ScrollView {
            
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                    
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    Text(landmark.description)
                }
                .padding()
            }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
