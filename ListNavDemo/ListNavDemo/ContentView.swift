//
//  ContentView.swift
//  ListNavDemo
//
//  Created by 방유빈 on 2023/02/16.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var carStore: CarStore = CarStore(cars: carData)
    
    var body: some View {
        List{
            ForEach(carStore.cars) { car in
                
                HStack{
                    Image(car.ImageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 60)
                    Text(car.name)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
