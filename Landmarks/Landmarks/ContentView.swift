//
//  ContentView.swift
//  Landmarks
//
//  Created by 방유빈 on 2023/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height:300)
            CircleImage()
                .offset(y:-130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                Text("Trutle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Divider()
                
                VStack{
                    Text("About Turtle Rock")
                        .font(.title2)
                    Text("Descriptive text goes here")
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
