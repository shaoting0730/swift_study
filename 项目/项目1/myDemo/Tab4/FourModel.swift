//
//  FourModel.swift
//  myDemo
//
//  Created by Shaoting Zhou on 2017/12/20.
//  Copyright © 2017年 Shaoting Zhou. All rights reserved.
//

import UIKit

struct FourModel: Codable {
    var error_msg:String
    var lives:[FourLivesModel]
    
}

struct FourLivesModel: Codable {
    var city:String
    var creator:FourCreatorModel
}

struct FourCreatorModel: Codable {
    var nick:String
    var portrait:String
}
