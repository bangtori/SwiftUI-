//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 방유빈 on 2023/02/06.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData : ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks:[Landmark] {
        modelData.landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites Only")
                }
                ForEach(filteredLandmarks){ landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    }label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
//                   LandmarkList()
//                       .previewDevice(PreviewDevice(rawValue: deviceName))
//                       .previewDisplayName(deviceName)
//               }
        LandmarkList()
            .environmentObject(ModelData())
    }
}
