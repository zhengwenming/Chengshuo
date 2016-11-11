//
//  BaseNavigationController.swift
//  WenmingSwiftDemo
//
//  Created by zhengwenming on 16/9/24.
//  Copyright © 2016年 zhengwenming. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    //统一管理整个项目中的导航控制器.
    //如果说项目中突然有一个页面要用旋转屏，那么这个类必须要添加上，不然不好统一处理
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.barTintColor = kNavColor
//        self.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,[UIFont boldSystemFontOfSize:17.0],NSFontAttributeName ,nil];
navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    

    
    
}
