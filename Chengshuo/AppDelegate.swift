//
//  AppDelegate.swift
//  WenmingSwiftDemo
//
//  Created by zhengwenming on 16/9/24.
//  Copyright © 2016年 zhengwenming. All rights reserved.
//


import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    //"属性"。或者说是一个”变量“。
    
    var window: UIWindow?
    
    //定义变量的时候，就可以在这里初始化，给初始值
    var array1:[Int] = [1,3,4]
    
    
    var rootVC: RootViewController?
    
    
    //打头，放在最top，最显眼的位置。
    //切入口
    //pch,OC
    //swift中的任何一个类都可以获取另一个类的信息，（private，public）
    //swift中没有宏，let（定义常量,他是线程安全的，可以用来做单例） var （变量）
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        testCode()
        
        
        
        self.window = UIWindow(frame:UIScreen.main.bounds)
        
        self.window!.backgroundColor = UIColor.white
        let tabbar = RootViewController();
        self.window!.rootViewController = tabbar;
        self.window!.makeKeyAndVisible()
        
        //1、接收返回值，并用这个返回值
        //2、_ 在swift中，所有你想忽略，你想略过，你不关心的参数，都可以用 _ 去忽略
        //3、@discardableResult 关键词去标记，提前声明，可以不接收返回值
        HomeViewController.aClassfunction(aInputString: "a", bInputSring: "b")
        
        let arr:[String] = ["q","w","e","r"]
        
        for _ in arr {
            print(arr)
        }
        
        
        
        return true
    }
    
    
    
    func testCode(){
        
        //swift常用的第三方库swiftJson、Kingfisher、Alamofire、SnapKit
        //用点. 去掉用方法和属性，why？
        //OC是比较反人类，语法［］
        
        //测试，
        let X:CGFloat  = kScreenWidth;
        
        var arr1:[String] = ["q","w","e","r"]
        arr1.insert("l", at: 1);
        print(arr1)
        
        //runtime的知识点，我们对nil对象发消息(objc_msgsend),会被忽略，不会崩溃
        
        window?.backgroundColor = UIColor.white
        rootVC?.view.backgroundColor = UIColor.red
        //NSLog--print  ""   \ (obj,....)
        print("rootVC = \(rootVC)")
        
        
        //?可选类-----我不确定？，可能有值，可能没值
        //!隐性拆包----我肯定有值，拆包吧
        var str: String! = "ff"
        //uppercaseString  swift 3.0之前的方法
        //        uppercased() swift 3.0的方法
        str = str!.uppercased()
        //fatal error: unexpectedly found nil while unwrapping an Optional value
        print(array1)
        
        
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

