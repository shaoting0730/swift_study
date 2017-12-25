//
//  TabOneVC.swift
//  myDemo
//
//  Created by Shaoting Zhou on 2017/12/19.
//  Copyright © 2017年 Shaoting Zhou. All rights reserved.
//  SwiftyJSON --  https://github.com/SwiftyJSON/SwiftyJSON

import UIKit
import Alamofire
import SwiftyJSON
private let oneCellIdentifier = "oneCellIdentifier"

class TabOneVC: UIViewController {

    lazy var oneTableView:UITableView = {
        let tabView = UITableView.init(frame: UIScreen.main.bounds)
        tabView.delegate = self
        tabView.dataSource = self
        tabView.rowHeight = 220.0
        tabView.register(OneCell.self, forCellReuseIdentifier: oneCellIdentifier)
        view.addSubview(tabView)
        return tabView

    }()
    
    var ary:[JSON]! = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("http://116.211.167.106/api/live/aggregation?uid=133825214&interest=1").responseJSON { (response) in
            let data = response.result.value
            let j = JSON.init(data!)
            self.ary = j["lives"].array
            self.oneTableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
extension TabOneVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ary.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: oneCellIdentifier, for: indexPath) as! OneCell
        cell.jsonObj = ary[indexPath.row]
        
        return cell;
        
    }
    
    
}

