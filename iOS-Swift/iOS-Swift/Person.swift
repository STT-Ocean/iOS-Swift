//
//  Person.swift
//  iOS-Swift
//
//  Created by Alpha on 2017/8/10.
//  Copyright © 2017年 STT. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var age: Int = 0
    var name : String?
    var time : String?
    
    init(dict : [String : Any]) {
        super.init()
        // 采用3.2 版本可以完成字典转模型 但是4.0 版本不可以
        self.setValuesForKeys(dict)
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
  
    
    
    
}
