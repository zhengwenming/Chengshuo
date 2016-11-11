//
//  RootViewController.swift
//  WenmingSwiftDemo
//
//  Created by zhengwenming on 16/9/24.
//  Copyright © 2016年 zhengwenming. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController {

    
    var homeVC:HomeViewController! = HomeViewController()
    var breakNewsVC = BreakNewsViewController()
    var iMessageVC = iMessageViewController()
    var mineVC = MineViewController()
    var personCenterVC = PersonCenterViewController()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        //城说
        let homeNav:BaseNavigationController = BaseNavigationController(rootViewController: homeVC)
        homeVC.navigationItem.title = "城说"
        //构造器的知识点
        let homeItem = UITabBarItem(title: "城说", image: UIImage(named: "Home"), selectedImage: nil)
        homeNav.tabBarItem = homeItem

//        我的
        mineVC.navigationItem.title = "我的"

        let mineNav:BaseNavigationController = BaseNavigationController(rootViewController: mineVC)
        let mineItem = UITabBarItem(title: "我的", image: UIImage(named: "Mine"), selectedImage: nil)
        mineNav.tabBarItem = mineItem
        
        
        
//        快报
        breakNewsVC.navigationItem.title = "快报"

        let breakNewsNav:BaseNavigationController = BaseNavigationController(rootViewController: breakNewsVC)
        let breakNewsItem = UITabBarItem(title: "快报", image: UIImage(named: "BreakNews"), selectedImage: nil)
        breakNewsNav.tabBarItem = breakNewsItem
        
//        消息
        iMessageVC.navigationItem.title = "消息"

        let iMessageNav:BaseNavigationController = BaseNavigationController(rootViewController: iMessageVC)
        let iMessageItem = UITabBarItem(title: "消息", image: UIImage(named: "iMessage"), selectedImage: nil)
        iMessageNav.tabBarItem = iMessageItem
        
        
        
//        我
        personCenterVC.navigationItem.title = "我"
        let personCenterNav:BaseNavigationController = BaseNavigationController(rootViewController: personCenterVC)
        let personCenterItem = UITabBarItem(title: "我", image: UIImage(named: "PersonCenter"), selectedImage: nil)
        personCenterNav.tabBarItem = personCenterItem
        
        self.tabBar.tintColor = kThemeColor
        self.viewControllers = [homeNav,mineNav,breakNewsNav,iMessageNav,personCenterNav]
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
   

}
