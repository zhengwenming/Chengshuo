//
//  iMessageViewController.swift
//  WenmingSwiftDemo
//
//  Created by zhengwenming on 16/9/24.
//  Copyright © 2016年 zhengwenming. All rights reserved.
//

import UIKit

class iMessageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange

        let rightBarBtnItem = UIBarButtonItem(image:UIImage(named: "actionsheet"), style: .done, target: self, action:#selector(rightBtnClick(rightSender:)))
        
        self.navigationItem.rightBarButtonItem = rightBarBtnItem
    }
    @objc  private func rightBtnClick(rightSender:UIBarButtonItem){
        print(rightSender)
    }
    ///收到内存警告⚠️
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //clear SD cache
        //IO
        //数据库
        
    }
    

 

}
