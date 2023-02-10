//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by 방유빈 on 2023/02/10.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation:Double = 0
    @State private var text:String = "Welcome to SwiftUI"
    @State private var colorIndex:Int = 0
    
    var colors:[Color] = [.black, .red, .green, .blue, .orange, .gray]
    var colornames = ["Black", "Red", "Green", "Blue", "Orange", "Gray"]

    var body: some View {
        VStack {
            Spacer()
            Text(text)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(self.rotation))
                //.animation(.easeInOut(duration: 5))
                .foregroundColor(self.colors[self.colorIndex])
            Spacer()
            Divider()
            Slider(value: $rotation, in: 0 ... 360, step: 0.1)
                .padding()
            
            TextField("Enter text here", text:$text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Picker(selection: $colorIndex, label: Text("Color")) {
                ForEach(0 ..< 6){
                    Text(self.colornames[$0])
                        .foregroundColor(self.colors[$0])
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
