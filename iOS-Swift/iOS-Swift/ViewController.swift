//
//  ViewController.swift
//  iOS-Swift
//
//  Created by Alpha on 2017/6/8.
//  Copyright © 2017年 STT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        arrayFunction()
        
        testForModel()
        
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }

}

