//
//  ViewController.swift
//  UItableView-swift
//
//  Created by shaoting on 16/3/23.
//  Copyright © 2016年 9elephas. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var ary:[String] = ["0","1","2"];
    override func viewDidLoad() {
        super.viewDidLoad()
        //定义一个UITableView
            let mytableView = UITableView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height), style: UITableViewStyle.Plain)
            self.view.addSubview(mytableView)
            mytableView.delegate = self
            mytableView.dataSource = self
            mytableView.backgroundColor = UIColor.whiteColor()
            mytableView.rowHeight = 100
        // Do any additional setup after loading the view, typically from a nib.
    }
    //实现UITableViewDataSource必须实现的两个方法
    //行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 2
    }
    //返回cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
          let cell = UITableViewCell()
          cell.textLabel?.text = "少停"
        if indexPath.row % 2 == 0{
         cell.imageView?.image = UIImage(named: "1111")
        }else{
         cell.imageView?.image = UIImage(named: "2222")
        }
        return cell
    }
    //section个数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    //页眉
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
           return "0"
        }else if section == 1{
           return "1"
        }else{
           return "2"
        }
    }
    //页脚
    func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "..."
    }
    //右侧索引
    func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
        return ary
    }
    //可以编辑
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        if indexPath.section == 1{
         return false
        }else{
         return true
        }
    }
    //可以移动
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true;
    }
    //选中
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0{
          print("选中1区第\(indexPath.row)行")
        }else if indexPath.section == 1 {
          print("选中2区第\(indexPath.row)行")
        }else{
          print("选中3区第\(indexPath.row)行")
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

