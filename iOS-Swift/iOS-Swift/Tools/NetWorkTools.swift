//
//  NetWorkTools.swift
//  iOS-Swift
//
//  Created by Alpha on 16/08/2017.
//  Copyright © 2017 STT. All rights reserved.
//

import UIKit
import AFNetworking


class NetWorkTools: AFHTTPSessionManager {
    static let shareInstance:NetWorkTools = {
        let manager = NetWorkTools.init(baseURL: URL.init(string: baseUrl), sessionConfiguration: URLSessionConfiguration.default)
        manager.requestSerializer = AFJSONRequestSerializer()
        manager.requestSerializer.setValue("application/json", forHTTPHeaderField: "Content-Type")
        return manager
    }()
}
