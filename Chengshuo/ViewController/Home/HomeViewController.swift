
//
//  HomeViewController.swift
//  WenmingSwiftDemo
//
//  Created by zhengwenming on 16/9/24.
//  Copyright © 2016年 zhengwenming. All rights reserved.
//

import UIKit
//报错的意思就是说：你没有实现代理应该实现的方法（必须实现的方法，有两个，一个返回row的，一个返回cell）

///Users/apple/Desktop/WenmingSwiftDemo/WenmingSwiftDemo/ViewController/Home/HomeViewController.swift:12:7: Type 'HomeViewController' does not conform to protocol 'UITableViewDataSource'

class HomeViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {
    
    var cityStr:String?
    //()alloc init
    
    //复合句的写法，注意没有return
    //代码有层次性，直接包起来，代码成一块一块的展现，清晰分明
    //    UILabel *aLabel = ({
    //    UILabel *bLabel = [[UILabel alloc]init];
    //    bLabel;
    //    });
    
    //Swift惰性初始化（lazy）属性
    //第一种lazy的方式，直接类方法或者其他的方法初始化
    
    lazy var  homeTableView:UITableView? = UITableView(frame:CGRect(x:0,y:0,width:kScreenWidth,height:kScreenHeight), style: .plain)
    
    
    //第二种lazy的方式 ，闭包的形式初始化
    //    lazy var secondTableView = {
    //
    //   return  UITableView(frame:CGRect(x:0,y:kNavHeight,width:kScreenWidth,height:kScreenHeight), style: .plain)
    //
    //    }()
    
    //    lazy var second = {        return "second"        }()
    
    
    
    let centerBtn = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityStr = "shanghai"
        view.backgroundColor = UIColor.white
        addLeftAndRightBtn()
        //homeTableView？解包，隐饰解包
        //        homeTableView!解包，强制解包---》一般用的时候，才解包，比如参与运算或者用某个控件
        //报错的意思就是说：你没有遵守代理
        ///Users/apple/Desktop/WenmingSwiftDemo/WenmingSwiftDemo/ViewController/Home/HomeViewController.swift:51:35: Cannot assign value of type 'HomeViewController' to type 'UITableViewDelegate?'
        homeTableView?.delegate = self;
        homeTableView?.dataSource = self;
        homeTableView?.rowHeight = 60;
        //得到一个class，用这个方法DisplayCell.self
        homeTableView?.register(DisplayCell.self, forCellReuseIdentifier: "DisplayCell")
        if homeTableView != nil {
            view.addSubview(homeTableView!)
        }
        homeTableView?.tableFooterView = UIView();
        //guard的意思是 守护或者保护homeTableView变量不为nil，如果为nil，就走else，return
        //        guard homeTableView != nil else {
        //            return;
        //        }
        //下面的是不为nil的情况
//        view.addSubview(homeTableView!)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DisplayCell", for: indexPath) ;
        cell.textLabel?.text = String(indexPath.row);
        return cell
    }
    //ESC调出所有方法或属性
    func addLeftAndRightBtn(){
        
        ///1、Users/apple/Desktop/WenmingSwiftDemo/WenmingSwiftDemo/ViewController/Home/HomeViewController.swift:45:108: Argument of '#selector' refers to instance method 'leftBtnClick()' that is not exposed to Objective-C
        
        ///2、图片渲染
        let leftBarBtnItem = UIBarButtonItem(image:UIImage(named: "tab_write"), style:.done, target: self, action:#selector(leftBtnClick(leftSender:)))
        
        self.navigationItem.leftBarButtonItem = leftBarBtnItem
        
        let rightBarBtnItem = UIBarButtonItem(image:UIImage(named: "actionsheet"), style: .done, target: self, action:#selector(rightBtnClick(rightSender:)))
        
        self.navigationItem.rightBarButtonItem = rightBarBtnItem
    }
    
    //@objc  ????
    @objc  private func leftBtnClick(leftSender:UIBarButtonItem){
        print(leftSender)
    }
    
    
    @objc  private func rightBtnClick(rightSender:UIBarButtonItem){
        print(rightSender)
    }
    
    
    
    
    
    //    /// centerBtnClickxxx
    //    func centerBtnClick(){
    //        //打印当前的方法__FUNCTION__
    //        print(#function)
    //    }
    
    
    //类方法定义
    
    @discardableResult class func aClassfunction(aInputString:String,bInputSring:String)->String{
        
        return aInputString + bInputSring
    }
    
    //    VVDoucument-->王巍
    //optional+command+/
    /// 这是一个演示函数func
    /// - parameter aIntValue: 传进来的一个Int类型的参数
    /// - returns: return value 返回aIntValue +100；
    func testFunc(aIntValue:Int) -> Int {
        print(#function)
        centerBtn.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        centerBtn.center = view.center
        
        //打color字出来，然后系统提示出来Literal，最后enter
        //这个是Xcode 8新功能，不是插件
        centerBtn.backgroundColor = #colorLiteral(red: 0.2167138947, green: 1, blue: 0.3532415543, alpha: 1)
        centerBtn.addTarget(self, action:#selector(centerBtnClick), for:.touchUpInside)
        view.addSubview(centerBtn)
        return aIntValue + 100;
    }
    
    /// 这是一个演示函数func
    private func display() {
        let imageV = UIImageView()
        //Xcode8的新特性，设置图片只要给图片名字
        //这个是Xcode 8新功能，不是插件
        
        //        imageV.image = #imageLiteral(resourceName: "Mine")
        imageV.image = UIImage(named: "Mine")
        imageV.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        imageV.center = view.center
        //        view.addSubview(imageV)
        
        
        
        ///演示btn addTarget 并且传递参数
        
        let testBtn = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        testBtn.center = view.center
        testBtn.backgroundColor = UIColor.red
        ///Users/apple/Desktop/WenmingSwiftDemo/WenmingSwiftDemo/ViewController/Home/HomeViewController.swift:40:40: Argument of '#selector' refers to instance method 'centerBtnClick()' that is not exposed to Objective-C
        testBtn.addTarget(self, action:#selector(centerBtnClick(aparamer:)), for: .touchUpInside)
        view.addSubview(testBtn)
        
        
        
        let 文明  = "zhengwenming"
        
        print(文明)
        
        
        
        let 🙂  = "这是一个微笑表情"
        
        print(🙂)
        
        
    }
    
    @objc private func centerBtnClick(aparamer:UIButton){
        ///函数名字 centerBtnClick(aparamer:)
        //第一个参数swift3.0中不能省略
        print(#function)
        print(aparamer)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
