//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 방유빈 on 2023/02/06.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark:Landmark
    
    var body: some View {
        ScrollView{
            VStack{
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height:300)
                CircleImage(image: landmark.image)
                    .offset(y:-130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading){
                    Text(landmark.name)
                        .font(.title)
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    VStack{
                        Text("About \(landmark.park)")
                            .font(.title2)
                        Text(landmark.description)
                    }
                }
                .padding()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
