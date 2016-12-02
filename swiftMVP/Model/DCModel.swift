//
//  DCModel.swift
//  swiftMVP
//
//  Created by point on 2016/12/2.
//  Copyright © 2016年 dacai. All rights reserved.
//

import UIKit

class DCModel: NSObject {
    
    // 用户ID
    var user_id : String = ""
    
    // 用户名字
    var user_name : String = ""
    
    init(dict : [String : Any]) {
        super.init()
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
}

