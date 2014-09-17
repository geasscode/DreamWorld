//
//  DynamicService.swift
//  DreamWorld
//
//  Created by imac on 14-6-15.
//  Copyright (c) 2014年 imac. All rights reserved.
//

import UIKit

class DynamicService: NSObject {
   
    var dynamicData:Array<DynamicModel> = []
    
    
    func getDynamicDataForPlist() ->Array<DynamicModel>{
        
        
        var path:String  =  NSBundle.mainBundle().pathForResource("dynamic", ofType: "plist")!
        var dicData:NSDictionary! = NSDictionary(contentsOfFile:path) as NSDictionary
        var array:NSArray = dicData.objectForKey("data") as NSArray
        
        for value : AnyObject in array
        {
            var dynamicModel:DynamicModel = DynamicModel(name:value.objectForKey("name") as String,
                recommend:value.objectForKey("recommend") as String,
                type:value.objectForKey("type") as String,
                time:value.objectForKey("time") as String,
                pic:value.objectForKey("pic") as String,
                address:value.objectForKey("address") as String)
            dynamicData.append(dynamicModel)
        
        }
        
        return dynamicData
    }
    
}
