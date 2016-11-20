//
//  WMUtil.swift
//  Chengshuo
//
//  Created by zhengwenming on 2016/11/19.
//  Copyright © 2016年 郑文明. All rights reserved.
//

import UIKit
import Foundation
///工具类
class WMUtil: NSObject {

    
    /// 获取当前时间的字符串
    ///
    /// - Returns: 当前时间的字符串
    class func currentTime()->String{
        let dateFormtter = DateFormatter()
        dateFormtter.timeZone = NSTimeZone.system
        dateFormtter.dateFormat = "yyyyMMddHHmmss"
        
        let date = Date()
       let dateString = dateFormtter.string(from: date)
        return dateString
    }
    
    /// base64处理后再替换
    ///
    /// - Parameter aInputString: 等待处理的string
    /// - Returns: 处理后的结果string
    class func encondeBase64(aInputString:String)->String{
        let utf8str = aInputString.data(using: .utf8)
        var base64EncodedString = utf8str?.base64EncodedString(options:.init(rawValue: 0))
        base64EncodedString = base64EncodedString?.replacingOccurrences(of: "+", with: "-")
        base64EncodedString = base64EncodedString?.replacingOccurrences(of: "/", with: "_")
        base64EncodedString = base64EncodedString?.replacingOccurrences(of: "=", with: ".")
        return base64EncodedString!

    }
    
    
    class func makeSignWithParamArray(aInputArray:Array<Dictionary<String, Any>>)->String{
        
        var  tempAray:[Dictionary<String, Any>] = []


        for dic in aInputArray {
            let aValue = dic[orderKey] as! String
           let resultArray = aValue.components(separatedBy: "=")
            let safeString = "\(resultArray.first!.lowercased())=\(resultArray.last!)"
            tempAray.append([orderKey:safeString])
        }
        
        
        
        
        var  tArray:[String] = []
        
        for adic in tempAray {
            let str = adic[orderKey] as! String
            tArray.append(str)
        }
        
        tArray.sort(by: <)

        
         print(tArray)

        
        var  reslutAray:[Dictionary<String, Any>] = []

        
        for value in tArray {
            reslutAray.append([orderKey:value])
        }
        
        print(reslutAray)

        var muString:String = ""
        
        for aValue in reslutAray {
            let safeString = "&"+"\(aValue[orderKey]!)"
                muString.append(safeString)
        }
        
        
        muString = signKey+muString
        
        let temString = self.md5Encode(aInputString: muString);
        
         let sign = self.encondeBase64(aInputString: temString)
        
        return sign
    }
    
    
    class func md5Encode(aInputString:String)->String{
        
        let cStr = (aInputString as NSString).utf8String
        let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: 16)
        CC_MD5(cStr,(CC_LONG)(strlen(cStr)), buffer)

        
        let md5String = String(format:"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",buffer[0],buffer[1],buffer[2],buffer[3],buffer[4],buffer[5],buffer[6],buffer[7],buffer[8],
               buffer[9],buffer[10],buffer[11],buffer[12],buffer[13],buffer[14],buffer[15])
    
        free(buffer)
    
        return md5String
    }
    
    
    
    
    
//    func compareDic(aInputD:Dictionary<String, Any>,bInputD:Dictionary<String, Any>) -> ComparisonResult {
//        
//        // 先按照姓排序
//        var result:ComparisonResult = (aInputD[orderKey]).compare(bInputD[orderKey])
//        
//        if result == ComparisonResult.OrderedSame {
//            
//            // 如果有相同的姓，就比较名字
//            result = self.firstName.compare(stu.firstName)
//        }
//        return result;
//    }
    
    
    
    
    
    
    
    
    
    
    
    
}
