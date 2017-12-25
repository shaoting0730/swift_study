//
//  TabTwoVC.swift
//  myDemo
//
//  Created by Shaoting Zhou on 2017/12/19.
//  Copyright © 2017年 Shaoting Zhou. All rights reserved.
//  HandyJSON -- https://github.com/alibaba/HandyJSON

import UIKit
import Alamofire
import HandyJSON

private let twoCellIdentifier = "twoCellIdentifier"
class TabTwoVC: UIViewController {

    lazy var twoTableView:UITableView = {
        let tabView = UITableView.init(frame: UIScreen.main.bounds)
        tabView.delegate = self
        tabView.dataSource = self
        tabView.rowHeight = 220.0
        tabView.register(TwoCell.self, forCellReuseIdentifier: twoCellIdentifier)
        view.addSubview(tabView)

        return tabView
    }()

    var ary:[Dictionary<String, Any>] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("http://116.211.167.106/api/live/aggregation?uid=133825214&interest=1").responseJSON { (response) in
            let data:Dictionary<String,Any> = response.result.value as! Dictionary
            self.ary = data["lives"] as! [Dictionary<String, Any>]
            self.twoTableView.reloadData()
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

extension TabTwoVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ary.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: twoCellIdentifier, for: indexPath) as! TwoCell
      cell.model = JSONDeserializer.deserializeFrom(dict: ary[indexPath.row])
      return cell;
        
    }
    
    
}
