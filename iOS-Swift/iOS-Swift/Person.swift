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
    var name = ""
    var time = ""
    
    init(dict : [String : Any]) {
        super.init()
        self.setValuesForKeys(dict)
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
  
    
    
    
}
