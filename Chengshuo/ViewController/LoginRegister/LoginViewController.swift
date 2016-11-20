//
//  LoginViewController.swift
//  WenmingSwiftDemo
//
//  Created by zhengwenming on 2016/10/29.
//  Copyright © 2016年 zhengwenming. All rights reserved.
//





import UIKit

import Alamofire




class LoginViewController: BaseViewController {
    
    
    
     let BaiduURL = "http://apis.haoservice.com/lifeservice/cook/query"
    let PicURL = "http://weixintest.ihk.cn/ihkwx_upload/commentPic/20160426/14616659617000.jpg"

    
    
    @IBOutlet weak var userNameTF: UITextField!

    @IBOutlet weak var passwordTF: UITextField!
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "登录"
        
        let parameters:[String:Any] = [
            "menu": "土豆",
            "pn":  1,
            "rn": "10",
            "key": "2ba215a3f83b4b898d0f6fdca4e16c7c",
            ]
        
        Alamofire.request(BaiduURL).responseJSON { (response) in
            print(response)
        }

        
        
    }
    //注册按钮点击
    @IBAction func registerBtnClick(_ sender: UIButton) {
        navigationController?.pushViewController(RegisterViewController(), animated: true)
    }
    //登录按钮点击

    @IBAction func loginBtnClick(_ sender: Any) {
       //guard eg.守护两个输入框都有值，如果有一个为空，return
        guard (passwordTF.text?.isEmpty==false),(userNameTF.text?.isEmpty==false) else {
            return
        }
        
        let username = userNameTF!.text!
        
        let password = passwordTF!.text!


        
        var  orderArray:Array<Dictionary<String, Any>> = []
        
        orderArray.append([orderKey:"username = \(username)"])
        orderArray.append([orderKey:"password = \(password)"])
        orderArray.append([orderKey:"partnerid = \(partnerid)"])
        orderArray.append([orderKey:"timestamp = \(WMUtil.currentTime())"])
        orderArray.append([orderKey:"passwordtype = \(String(0))"])

        print(orderArray);
        
        //postDic需要的参数
        var postDic:Dictionary <String,Any> = [:]
        
        //系统参数
        postDic["partnerid"]    = WMUtil.encondeBase64(aInputString: partnerid)
        postDic["sign"]         = WMUtil.makeSignWithParamArray(aInputArray:orderArray);
        postDic["timestamp"]    = WMUtil.encondeBase64(aInputString: WMUtil.currentTime())
        //业务参数
        postDic["password"]     = WMUtil.encondeBase64(aInputString: password)
        postDic["passwordtype"] = WMUtil.encondeBase64(aInputString: "0")
        postDic["username"]     = WMUtil.encondeBase64(aInputString: username)

        
        
        
        Alamofire.request(login_URL, method: .post, parameters: postDic, encoding: JSONEncoding.default)
            .downloadProgress(queue: DispatchQueue.global(qos: .utility)) { progress in
                print("Progress: \(progress.fractionCompleted)")
            }
            .validate { request, response, data in
                //把Data对象转换回JSON对象
                let json = try? JSONSerialization.jsonObject(with: data!,
                                                             options:.allowFragments) as! [String: Any]
                print("Json Object:", json)
                
                return .success
            }
            .responseJSON { response in
                debugPrint(response)
        }
        
        
        

        
        
        
        //OC
//        params = {
//            partnerid = "MTAwMDAwMDAwMA..";
//            password = MTIzNDU2;
//            passwordtype = "MA..";
//            sign = "NDA2RDc3NzU3MzdCMzQ2NkZCRTlFQ0ZEQ0ZGMkY3ODY.";
//            timestamp = "MjAxNjExMjAyMjE0MDk.";
//            username = "MTg4MjQ5MDUzNjM.";
//        }
        
        
        
        
        
        
//        POST\DELETE\PUT\GET
        
//        Alamofire.request(login_URL, method: .post, parameters: postDic, encoding: JSONEncoding.default).responseJSON { response in
//            debugPrint(response)
//        }.downloadProgress { progress in
//            
//        }
        
        
        
        
        
    }
    //忘记密码按钮点击事件
    @IBAction func forgetPwdClick(_ sender: Any) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
