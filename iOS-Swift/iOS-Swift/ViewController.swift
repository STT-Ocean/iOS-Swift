//
//  ViewController.swift
//  iOS-Swift
//
//  Created by Alpha on 2017/6/8.
//  Copyright © 2017年 STT. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire


class ViewController: UIViewController {
    
    var contentArray = [[String : Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        arrayFunction()
        
//        testForModel()
     //   testNetWork()
//        testAlamafir()
        testForAlamofireFormOschina()
        
    }
    
    func testForModel(){
        
        let dict = ["age":10,
                    "name":"开心",
                    "time":"10983"] as [String : Any]
        let person = Person.init(dict: dict)
        ALog(message: person.name)
    }
    
    
    func arrayFunction()  {
        var array = [[["haha":"Oeioie","name":"ages"],
                     ["haha":"Oeioie","name":"ages"],
                     ["haha":"Oeioie","name":"ages"]],
                     [["haha":"Oeioie","name":"ages"],
                      ["haha":"Oeioie","name":"ages"],
                      ["haha":"Oeioie","name":"ages"]]]
        
        let myfirst = array[0]
        ALog(message: "\(array) + \(array.count) + \(myfirst) + \(myfirst.count)")
    }
    
    func testNetWork(){
        let parameters = ["page":["pageNo":"1","pageSize":"10"]]
        
        NetWorkTools.shareInstance.post(findPlaces, parameters: parameters, progress: { (progerss) in
            
            
        }, success: { (task, objec) in
            
                 ALog(message: "response + \(objec)")
            
            
            
        }) { (task, error) in
        }
        
        
    }
    
    func testAlamafir()  {
        
        
        let urlString = "\(baseUrl)\(findPlaces)"
        let parameters :Parameters = ["page":["pageNo":"1","pageSize":"10"]]
        let header : HTTPHeaders = ["Content-Type":"application/json"]
        Alamofire.request(urlString,  method: .post,parameters: parameters,  encoding: URLEncoding.default, headers:header).responseJSON { (response) in
            ALog(message: response)
        }
        
    }
    
    func testForAlamofireFormOschina() {
        
        Alamofire.request("http://api.androidhive.info/contacts/").responseJSON { (res) in
            
            guard let resultValue = res.result.value  else{
                return
            }
            let swiftJsonVar = JSON(resultValue)
            
            if let resData = swiftJsonVar["contacts"].arrayObject{
                self.contentArray = resData as! [[String:Any]]
                
            }
            
            for dic in self.contentArray{
                
              let model =  ContentModel.deserialize(from: dic as NSDictionary, designatedPath: "")
                ALog(message: model)
            }
            
            let contentArr =  [ContentModel].deserialize(from: self.contentArray as NSArray)
            
//            ALog(message: contentArr?.count)
            
//            ALog(message: "\(swiftJsonVar) ++++ \(self.contentArray)")
//            ALog(message: "\(resultValue)  + \(res)")
//            guard let contactsArr = (resultValue as! [String:Any])["contacts"] else{
//                return
//            }
//            contactsArr as? [Any]
//            ALog(message: contactsArr)
            
        }
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }

}

