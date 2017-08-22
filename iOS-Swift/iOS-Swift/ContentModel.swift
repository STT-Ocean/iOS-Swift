//
//  ContentModel.swift
//  iOS-Swift
//
//  Created by Alpha on 16/08/2017.
//  Copyright © 2017 STT. All rights reserved.
//

import UIKit



class PhotoModel: HandyJSON {
    
    var mobile : String?
    var home   : String?
    var office : String?
    
    required init() {
    }
    
    
}

class ContentModel: HandyJSON {
    var  name  : String?
    var  email : String?
    var address: String?
    var  gender: String?
    var phone : PhotoModel = PhotoModel()
    var id : String?
    required init() {}
    
    
}
