//
//  CarStore.swift
//  ListNavDemo
//
//  Created by 방유빈 on 2023/02/16.
//

import SwiftUI
import Combine

class CarStore : ObservableObject {
    
    @Published var cars: [Car]
    
    init (cars: [Car] = []) {
        self.cars = cars
    }
}
