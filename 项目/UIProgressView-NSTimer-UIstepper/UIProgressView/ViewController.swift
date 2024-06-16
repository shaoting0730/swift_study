//
//  ViewController.swift
//  UIProgressView
//
//  Created by shaoting on 16/3/24.
//  Copyright © 2016年 9elephas. All rights reserved.
//   swift控件学习篇
//   UIProgressView
//   NSTimer
//   UIstepper
//
//
import UIKit

class ViewController: UIViewController {
    var button:UIButton!
    var progressView:UIProgressView!
    var timer:NSTimer!
    
    var stepper:UIStepper!
    var label:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        makeProgress() //进度条
        makeStepper() //步
        
     button = UIButton(frame: CGRect(x: self.view.frame.width/2 - 50, y: 50, width: 100, height: 50))
     button.setTitle("开始", forState: UIControlState.Normal)
     button.addTarget(self, action: Selector("btnOnclick"), forControlEvents: UIControlEvents.AllTouchEvents)
     button.backgroundColor = UIColor.grayColor()
     self.view.addSubview(button)
        
     label = UILabel(frame: CGRect(x: 50, y: self.view.frame.height/2, width: 100, height: 50))
     label.backgroundColor = UIColor.brownColor()
     label.textColor = UIColor.blackColor()
     label.textAlignment = .Center
     label.text = "5.0"
     self.view.addSubview(label);
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func makeStepper(){
        stepper = UIStepper(frame: CGRect(x: 100, y: self.view.frame.height/2+60, width: 200, height: 100))
        stepper.tintColor = UIColor.blueColor()
        stepper.value = 5   //默认值
        stepper.minimumValue = 0   //最小值
        stepper.maximumValue = 10   //最大值
        stepper.stepValue = 1.0 //增量
        stepper.autorepeat = true //设置是否允许按住不放增量
        stepper.continuous = true
        stepper.wraps = true   //是否循环
        stepper.addTarget(self, action: Selector("stepperValueChange"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(stepper)
    }
    func stepperValueChange(){
        label.text = "\(stepper.value)"
    }
    
    
    
    func makeProgress(){
       progressView = UIProgressView(frame: CGRect(x: 20, y: 200, width: 120, height: 100))
       progressView.progressViewStyle = .Bar   //类型
       progressView.progress = 0.0 //初始值
       progressView.progressTintColor = UIColor.blueColor() //走过进度条颜色
       progressView.trackTintColor = UIColor.greenColor()   //未走进度条颜色
       self.view.addSubview(progressView)
    }
    func btnOnclick(){
       button.enabled = false
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector:"timerAction", userInfo: nil, repeats: true)
        timer.fire()
    }
    func timerAction(){
        progressView.progress += 0.02
        if  progressView.progress == 1{
            progressView.setProgress(0, animated: true)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

