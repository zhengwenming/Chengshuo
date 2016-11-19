//
//  LoginViewController.swift
//  WenmingSwiftDemo
//
//  Created by zhengwenming on 2016/10/29.
//  Copyright © 2016年 zhengwenming. All rights reserved.
//





import UIKit

//import Alamofire




class LoginViewController: BaseViewController {
    
    
    
     let BaiduURL = "http://apis.haoservice.com/lifeservice/cook/query?"
    
    
    @IBOutlet weak var userNameTF: UITextField!

    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        let parameters:[String:Any] = [
            "menu": "土豆",
            "pn":  1,
            "rn": "10",
            "key": "2ba215a3f83b4b898d0f6fdca4e16c7c",
            ]
        
        
        
        
        
    }
    //注册按钮点击事件
    @IBAction func registerBtnClick(_ sender: UIButton) {
        let iv:UIImageView = UIImageView(frame:CGRect(x: 0, y: 0, width: 100, height: 100))
        
        
        
        
    }
    //登录按钮点击事件

    @IBAction func loginBtnClick(_ sender: Any) {
       
        guard (passwordTF.text != nil),(userNameTF.text != nil) else {
            return
        }
        
        
        var parameters:Dictionary <String,Any> = [:]
        
        parameters["PasswordType"] = "1"
        parameters["UserName"] = userNameTF.text
        parameters["Password"] = passwordTF.text
        parameters["timestamp"] = WMUtil.currentTime()

        
        
    }
    //忘记密码按钮点击事件
    @IBAction func forgetPwdClick(_ sender: Any) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
