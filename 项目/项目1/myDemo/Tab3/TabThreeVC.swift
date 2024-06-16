//
//  TabThreeVC.swift
//  myDemo
//
//  Created by Shaoting Zhou on 2017/12/20.
//  Copyright © 2017年 Shaoting Zhou. All rights reserved.
//  ObjectMapper --  https://github.com/Hearst-DD/ObjectMapper

import UIKit
import Alamofire
import ObjectMapper
private let threeCellIdentifier = "threeCellIdentifier"

class TabThreeVC: UIViewController {
    
    lazy var threeTableView:UITableView = {
        let tabView = UITableView.init(frame: UIScreen.main.bounds)
        tabView.delegate = self
        tabView.dataSource = self
        tabView.rowHeight = 220.0
        tabView.register(ThreeCell.self, forCellReuseIdentifier: threeCellIdentifier)
        return tabView
    }()
    var ary:[Dictionary<String, Any>] = []

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(threeTableView)
        Alamofire.request("http://116.211.167.106/api/live/aggregation?uid=133825214&interest=1").responseJSON { (response) in
            let data:Dictionary<String,Any> = response.result.value as! Dictionary
            self.ary = data["lives"] as! [Dictionary<String, Any>]
            self.threeTableView.reloadData()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


extension TabThreeVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ary.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: threeCellIdentifier, for: indexPath) as! ThreeCell
        cell.model =  Mapper<ThreeModel>().map(JSON: ary[indexPath.row])
        return cell;
        
    }
    

    
    
}
