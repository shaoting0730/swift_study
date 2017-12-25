//
//  Model.swift
//  myDemo
//
//  Created by Shaoting Zhou on 2017/12/19.
//  Copyright © 2017年 Shaoting Zhou. All rights reserved.
//

import UIKit
import HandyJSON
struct  TwoModel: HandyJSON {
    var city:String! 
    var creator:TwoCreatorModel!
}

struct TwoCreatorModel: HandyJSON {
    var nick:String!
    var portrait:String!
}
