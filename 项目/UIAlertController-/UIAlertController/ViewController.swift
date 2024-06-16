//
//  ViewController.swift
//  UIAlertController
//
//  Created by shaoting on 16/3/25.
//  Copyright © 2016年 9elephas. All rights reserved.
//   swift控件学习篇
//    alert

//
//


import UIKit

class ViewController: UIViewController {
    
    var alert1:UIAlertController!
    var alert2:UIAlertController!
    var actionSheet:UIAlertController!
    
    var cancelAction =  UIAlertAction!()
    var okAction = UIAlertAction!()
    var deleteAction = UIAlertAction!()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 定义一个按钮,用于点击显示最简单的Alert
        let button1 = UIButton(type: UIButtonType.System)
        button1.frame = CGRect(x: 20, y: 20, width: 400, height: 50)
        button1.setTitle("最简单的Alert", forState: UIControlState.Normal)
        button1.addTarget(self, action: Selector("action1"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button1)
        // 定义一个按钮,用于点击显示带文本输入框的Alert
        let button2:UIButton = UIButton(type: UIButtonType.System)
        button2.frame = CGRect(x: 20, y: 100, width: 400, height: 50)
        button2.setTitle("带文本输入框的Alert", forState: UIControlState.Normal)
        button2.addTarget(self, action: Selector("action2"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button2)
        // 定义一个按钮,用于点击显示上拉菜单
        let button3 = UIButton(type: UIButtonType.System)
        button3.frame = CGRect(x: 20, y: 160, width: 400, height: 50)
        button3.setTitle("上拉菜单", forState: UIControlState.Normal)
        button3.addTarget(self, action: Selector("action3"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button3)
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func action1(){
        //定义菜单按钮
        cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: nil)
        okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
            print("you choose OK")
        })
        deleteAction = UIAlertAction(title: "删除", style: UIAlertActionStyle.Destructive, handler: { (UIAlertAction) -> Void in
            print("you choose delete")
        })
        //定义一个按钮,显示带文本框的Alert
        alert1 = UIAlertController(title: "最简单的Alert", message: "this is a simple", preferredStyle: UIAlertControllerStyle.Alert)
        alert1.addAction(cancelAction)
        alert1.addAction(okAction)
        alert1.addAction(deleteAction)
        self.presentViewController(alert1, animated: true, completion: nil)
    }
    func action2(){
        alert2 = UIAlertController(title: "带输入框的alert", message: "this is a test alert", preferredStyle: UIAlertControllerStyle.Alert)
        alert2.addTextFieldWithConfigurationHandler {(textFiled:UITextField!) -> Void in
           textFiled.placeholder = "username"
        }
        alert2.addTextFieldWithConfigurationHandler { (textFiled:UITextField) -> Void in
            textFiled.placeholder = "password"
            textFiled.secureTextEntry = true
        }
        let loginAction = UIAlertAction(title: "login", style: UIAlertActionStyle.Default) { (action:UIAlertAction!) -> Void in
            let name = (self.alert2.textFields?.first!)! as UITextField
            let password = (self.alert2.textFields?.last)! as UITextField
            print("name:\(name.text);password:\(password.text)")
        }
        alert2.addAction(loginAction)
        self.presentViewController(alert2, animated: true, completion: nil)
    }
    func action3(){
        actionSheet = UIAlertController(title: "上拉菜单", message: "this is a action", preferredStyle: UIAlertControllerStyle.ActionSheet)
        cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: nil)
        okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
            print("you choose OK")
        })
        deleteAction = UIAlertAction(title: "删除", style: UIAlertActionStyle.Destructive, handler: { (UIAlertAction) -> Void in
            print("you choose delete")
        })
        actionSheet.addAction(okAction)
        actionSheet.addAction(cancelAction)
        actionSheet.addAction(deleteAction)
        self.presentViewController(actionSheet, animated: true, completion: nil)
     
    
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

