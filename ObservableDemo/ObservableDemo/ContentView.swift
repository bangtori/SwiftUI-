//
//  ContentView.swift
//  ObservableDemo
//
//  Created by 방유빈 on 2023/02/10.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var timerData:TimerData
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action:resetCount){
                    Text("Reset Counter")
                }
                NavigationLink(destination:SecondView()){
                    Text("Next Screen")
                }
                .padding()
            }
        }
    }
    func resetCount(){
        timerData.resetCount()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
            .environmentObject(TimerData())
    }
}
