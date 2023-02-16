//
//  Car.swift
//  ListNavDemo
//
//  Created by 방유빈 on 2023/02/16.
//

import Foundation

struct Car : Codable, Identifiable {
    var id : String
    var name : String
    
    var description:String
    var isHybrid:Bool
    
    var ImageName : String
}
