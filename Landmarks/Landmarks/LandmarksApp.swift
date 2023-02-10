//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 방유빈 on 2023/01/26.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
