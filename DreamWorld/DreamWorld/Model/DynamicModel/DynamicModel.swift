//
//  DynamicModel.swift
//  DreamWorld
//
//  Created by imac on 14-6-15.
//  Copyright (c) 2014年 imac. All rights reserved.
//

import UIKit

class DynamicModel: NSObject {
    var name:String!
    var recommend:String!
    var type:String!
    var time:String!
    var pic:String!
    var address:String!
    
    init(name:String!,recommend:String!,type:String!,time:String!,pic:String!,address:String!){
        self.name = name
        self.recommend = recommend
        self.type = type
        self.time = time
        self.pic = pic
        self.address = address
    }
}
