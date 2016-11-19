//
//  WMUtil.swift
//  Chengshuo
//
//  Created by zhengwenming on 2016/11/19.
//  Copyright © 2016年 郑文明. All rights reserved.
//

import UIKit
import Foundation

class WMUtil: NSObject {

    class func currentTime()->String{
        let dateFormtter = DateFormatter()
        dateFormtter.timeZone = NSTimeZone(name: "GMT") as! TimeZone
        dateFormtter.dateFormat = "yyyyMMddHHmmss"
        
        let date = Date()
       let dateString = dateFormtter.string(from: date)
        return dateString
    }
}
