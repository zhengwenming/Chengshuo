//
//  BreakNewsViewController.swift
//  WenmingSwiftDemo
//
//  Created by zhengwenming on 16/9/24.
//  Copyright © 2016年 zhengwenming. All rights reserved.
//

import UIKit

class BreakNewsViewController: BaseViewController {
    var cityStr:String?
    lazy  var webView:UIWebView? = UIWebView(frame:CGRect(x:0,y:0,width:kScreenWidth,height:(kScreenHeight)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://tt.wl74.com/Home/MbIndex?CityId=44&GuId=2095&UserName=18824905363&Password=e10adc3949ba59abbe56e057f20f883e&Mb=ios")
        
        
        //let url = URL(string: "http://www.baidu.com")
        
        
        
        //亮度调节
        //进度调节提示
        //真正的旋转屏幕
        
        
        
        
        let urlRequest = URLRequest(url: url!, cachePolicy: .reloadIgnoringCacheData, timeoutInterval: 15)
        
        webView?.loadRequest(urlRequest)
        //webView?.delegate =  self
        view.backgroundColor = UIColor.cyan
        view.addSubview(webView!)
        
        
    }
    
    
    
    
    
    
    
    
    
    func getCity() {
    }
    
    
    
}
