//
//  MineViewController.swift
//  WenmingSwiftDemo
//
//  Created by zhengwenming on 16/9/24.
//  Copyright © 2016年 zhengwenming. All rights reserved.
//

import UIKit
class MineViewController: BaseViewController {

    var mineTable:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let rightBarBtnItem = UIBarButtonItem(image:UIImage(named: "actionsheet"), style: .done, target: self, action:#selector(rightBtnClick(rightSender:)))
        
        self.navigationItem.rightBarButtonItem = rightBarBtnItem
    }

    
    @objc  private func rightBtnClick(rightSender:UIBarButtonItem){
        print(rightSender)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
