//
//  ThreeModel.swift
//  myDemo
//
//  Created by Shaoting Zhou on 2017/12/20.
//  Copyright © 2017年 Shaoting Zhou. All rights reserved.
//

import UIKit
import ObjectMapper

struct ThreeModel: Mappable {
    var city:String!
    var creator:ThreeCreatorModel!
    
    mutating func mapping(map: Map) {
        city <- map["city"]
        creator <- map["creator"]
    }
    
    init?(map: Map) {
        
    }
    
}

struct ThreeCreatorModel: Mappable {
    var nick:String!
    var portrait:String!
    
    mutating func mapping(map: Map) {
        nick <- map["nick"]
        portrait <- map["portrait"]
    }
    
    init?(map: Map) {

    }
    
}
