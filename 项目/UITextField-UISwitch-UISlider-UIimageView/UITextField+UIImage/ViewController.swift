//
//  ViewController.swift
//  UITextField+UIImage
//
//  Created by shaoting on 16/3/24.
//  Copyright © 2016年 9elephas. All rights reserved.
//
//     swift 控件学习篇
//     UITextFiled  
//     UISwitch
//     UISlider
//     UIimageView
import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
        var textField:UITextField!
        var switch1:UISwitch!
        var slider:UISlider!
    var imageView:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTextField();
        makeUISwitch();
        makeSlide();
        
        let btn = UIButton(frame: CGRect(x: 200, y: 150, width: 100, height: 50))
        btn.setTitle("复位", forState: .Normal);
        btn.addTarget(self, action: Selector("recover:"), forControlEvents: UIControlEvents.AllEvents)
        btn.backgroundColor = UIColor.redColor()
        btn.tag = 20
        self.view.addSubview(btn)
        
        imageView = UIImageView(frame: CGRect(x: 200, y: 400, width: 50, height: 50))
        imageView.image = UIImage(named: "stop")
        self.view.addSubview(imageView);
         // Do any additional setup after loading the view, typically from a nib.
    }
    
     func makeSlide(){
        slider = UISlider(frame: CGRect(x: 20, y: 200, width: 400, height: 200))
        slider.minimumValue = 0  //最小值
        slider.maximumValue = 100  //最大值
        slider.value = 20   //默认值
        slider.minimumValueImage = UIImage(named: "start")  //最小值图片
        slider.maximumValueImage = UIImage(named: "stop") //最大值图片
//        slider.setMinimumTrackImage(UIImage(named: "left"), forState: UIControlState.Normal)//设置滑块左边的轨道图片
//        slider.setMaximumTrackImage(UIImage(named: "right"), forState: UIControlState.Normal)//设置滑块右边的轨道图片
        slider.setThumbImage(UIImage(named: "center"), forState: UIControlState.Normal)//设置滑块图片
        slider.minimumTrackTintColor = UIColor.brownColor()  //划过的轨道颜色
        slider.maximumTrackTintColor = UIColor.yellowColor()  //未划过的轨道颜色
        
        self.view.addSubview(slider);
    }
    func recover(sender:UIButton){
        slider.setValue(20, animated: true)
    }
    
    func makeUISwitch(){
        switch1 = UISwitch(frame: CGRect(x: 30, y: 150, width: 400, height: 10))
        switch1.on = true //默认ON是否打开
        switch1.tintColor = UIColor.redColor()
        switch1.onTintColor = UIColor.yellowColor()
        switch1.thumbTintColor = UIColor.blackColor()
        switch1.addTarget(self, action: Selector("switchChane:"), forControlEvents: UIControlEvents.AllEvents)
        self.view.addSubview(switch1)
    }
    func  switchChane(senger:UISwitch){
        if senger.on{
          print("is ON")
        }else{
          print("is OFF")
        }
    }
    
    
    
    
    
    func makeTextField(){
    textField = UITextField(frame: CGRect(x: 30, y: 50, width: self.view.frame.size.width-60, height: 70))
    //         textField.borderStyle = UITextBorderStyle.RoundedRect
    textField.borderStyle = .Line   //边框样式
    textField.placeholder = "请输入内容" //占位符
    textField.text = "username"  //为textFiled设置默认文字
    textField.delegate = self
    textField.keyboardType = .EmailAddress   //键盘类型
    self.view.addSubview(textField)
        }
    //UITextFieldDelegate中的方法
    func textFieldDidBeginEditing(textField: UITextField) {
        print("开始编辑")
    }
    func textFieldDidEndEditing(textField: UITextField) {
        print("结束编辑")
    }
    //点击return按钮隐藏键盘
    func  textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    //点击编辑框外部,隐藏键盘
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        textField.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

}

