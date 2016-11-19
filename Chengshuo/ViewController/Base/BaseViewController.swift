//
//  BaseViewController.swift
//  WenmingSwiftDemo
//
//  Created by zhengwenming on 16/9/24.
//  Copyright © 2016年 zhengwenming. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //类方法调用
        var resturString = HomeViewController.aClassfunction(aInputString: "hello", bInputSring: "word")
        print(resturString)
        
        UIApplication.shared.statusBarStyle = .lightContent
        

        
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)//基类里面收键盘
        super.touchesBegan(touches, with: event)
        
    }

}
