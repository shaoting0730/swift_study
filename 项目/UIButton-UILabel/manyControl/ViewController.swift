//
//  ViewController.swift
//  manyControl
//
//  Created by shaoting on 16/3/23.
//  Copyright © 2016年 9elephas. All rights reserved.
//
/// swift控件篇
//  按钮
//  UILabel
//  UIButton
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        makebtn();  //按钮
        makelabel();  //UILabel
               // Do any additional setup after loading the view, typically from a nib.
    }
    func makebtn(){
        //按钮button
        let btn = UIButton(frame: CGRectMake(50,20,200,50));
        //背景色
        btn.backgroundColor = UIColor.yellowColor();
        //背景图片
        btn.setImage(UIImage(named: "520"), forState: UIControlState.Normal)
        //标题文字
        btn.setTitle("按钮", forState: UIControlState.Normal)
        //标题颜色
        btn.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        //设置按钮标题阴影
        btn.setTitleShadowColor(UIColor.blackColor(), forState: UIControlState.Normal)
        //设置按钮阴影
        btn.titleLabel?.shadowOffset = CGSizeMake(2, 3)
        //设置按钮标题字体样式
        btn.titleLabel?.font = UIFont.systemFontOfSize(20)
        //设置按钮内部内容边距
        btn.contentEdgeInsets = UIEdgeInsetsMake(5, 5, 5, 5)
        //去掉高亮状态下的图像颜色加深
        btn.adjustsImageWhenHighlighted = false
        //去掉禁用状态下的图像颜色加深
        btn.adjustsImageWhenDisabled = false
        //添加按钮按下的发光效果
        btn.showsTouchWhenHighlighted = true
        //添加点击事件
        btn.addTarget(self, action: "btnOnclick:", forControlEvents: UIControlEvents.AllTouchEvents)
        //为按钮设置个标签
        btn.tag = 2
        self.view.addSubview(btn);
        //http://www.helloswift.com.cn/swiftbase/2015/0402/3553.html
    }
    //设置点击事件
    func btnOnclick(sender:UIButton!){
         print("点击了标签为\(sender.tag)按钮")
    }
    
    
    func makelabel(){
//        普通label
        let label1:UILabel = UILabel(frame: CGRect(x: 50,y: 100,width:100,height:50))
        label1.text = "普通label";
        label1.transform = CGAffineTransformMakeRotation(0.2)  //形变角度
        self.view.addSubview(label1)
        
//        圆角label
//        Label的圆角对其背景不起作用,只对其边框起作用
        let label2:UILabel = UILabel(frame: CGRect(x: 50, y: 160, width: 100, height: 50))
        label2.text = "圆角label"  //设置文字
        label2.textColor = UIColor.redColor()  //文字颜色
        label2.backgroundColor = UIColor.blackColor() //label颜色
        label2.textAlignment = NSTextAlignment.Center //文字对齐方式
        label2.layer.cornerRadius = 10   //剪切圆的半径
        label2.layer.borderWidth = 2    //边框宽度
        label2.layer.borderColor = UIColor.redColor().CGColor //边框颜色
        self.view.addSubview(label2)
        
        
//        让label拥有点击事件
        let label3:UILabel = UILabel(frame: CGRect(x: 50, y: 220, width: 100, height: 50))
        label3.text = "可以点击的label"
        label3.adjustsFontSizeToFitWidth = true // 根据label的宽度,改变文字的大小
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "labelOnclick:")  //创建个手势
        label3.userInteractionEnabled = true  //打开用户交互
        label3.addGestureRecognizer(tap)  //为label添加一个手势
        label3.shadowColor = UIColor.purpleColor()
        self.view.addSubview(label3)
        
//    让label显示html标签
        let label4:UILabel = UILabel(frame: CGRect(x: 50, y: 300, width: 100, height: 50))
        let html = "this is html <a href=\"http://www.baidu.com\">跳</a>"
        let data = html.dataUsingEncoding(NSUTF32StringEncoding, allowLossyConversion: false)
        do{
           let atext = try NSAttributedString(data: data!, options: [NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType], documentAttributes: nil)
            label4.attributedText = atext
        }catch{
           print(error)
        }
        label4.multipleTouchEnabled = true
        self.view.addSubview(label4)
//设置多行文本
        let label5:UILabel = UILabel(frame: CGRect(x: 50, y: 360, width: 200, height: 200))
        label5.backgroundColor = UIColor.yellowColor()
        label5.text = "好多好多文本,好多好多文本,好多好多文本,好多好多文本,好多好多文本,好多好多文本,好多好多文本,好多好多文本,好多好多文本,好多好多文本,好多好多文本,好多好多文本,好多好多文本,好多好多文本,好多好多文本,好多好多文本,";
        label5.lineBreakMode = NSLineBreakMode.ByTruncatingTail  //换行模式
        label5.numberOfLines = 10
        label5.adjustsFontSizeToFitWidth = true   //字号随框大小改变
        self.view.addSubview(label5)
     
    }

    func labelOnclick(sender:AnyObject){
        print("点击了label")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

