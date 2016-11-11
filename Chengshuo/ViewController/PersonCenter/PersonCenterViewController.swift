//
//  PersonCenterViewController.swift
//  WenmingSwiftDemo
//
//  Created by zhengwenming on 16/9/24.
//  Copyright © 2016年 zhengwenming. All rights reserved.
//

import UIKit
//写tableView的时候报错，不要理会，把代理设置好，然后遵守代理，最后实现代理方法就自然解决了报错

class PersonCenterViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {
    var mineTable:UITableView?
    //[]代表一个空的数组
    //var array2 = Array<Array<Int>>()
    //二维数组的定义
    var dataSource = Array<Array<String>>()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = [[""],["昵称","英文名","个性签名"],["修改地址","通讯工具"],["修改密码"],["用户反馈"],["推广挣钱","城市经理"],["退出账号"]]
        
        mineTable = UITableView(frame:CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight) , style:.grouped)
        mineTable?.delegate = self
        mineTable?.dataSource = self
        view.addSubview(mineTable!)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0,3,4,6:
                return 1
        case 1:
                return 3
        case 2,5:
                return 2
        default:
                return 2
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        if (cell==nil){
//            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
//        }
//        cell.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
//        //String函数把Int转为String
//        //Int函数把String转为Int
//        
//        var textVlaue:String = "100"
//        
//        let intValue:Int = Int(textVlaue)!
//        
//        cell.textLabel?.text = String(indexPath.row)
//        
//        return cell
        
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if (cell == nil)
        {
            
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        }
        //cell复用问题解决方法
        //在cell创建或者dequeue出来后，还原初始状态（颜色、居中、UISwitch的开或者关）
        //remove掉cell上面的控件
        cell!.textLabel?.textColor = UIColor.black
        cell!.textLabel?.textAlignment = NSTextAlignment.left
        cell!.textLabel?.backgroundColor = UIColor.white

        if (indexPath.row==0&&indexPath.section==6) {
            cell!.textLabel?.textAlignment = NSTextAlignment.center
            cell!.textLabel?.textColor = UIColor.black
            cell!.textLabel?.backgroundColor = kThemeColor

            
        }else if(indexPath.section==5){
            cell!.textLabel?.textColor = UIColor.orange
            
        }else{
            cell!.textLabel?.textColor = UIColor.black
        }

        cell!.textLabel?.text = dataSource[indexPath.section][indexPath.row]
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    
}
