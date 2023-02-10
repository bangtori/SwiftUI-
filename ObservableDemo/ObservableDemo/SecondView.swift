//
//  SecondView.swift
//  ObservableDemo
//
//  Created by 방유빈 on 2023/02/10.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var timerData : TimerData
    
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
            .environmentObject(TimerData())
    }
}
