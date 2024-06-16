//
//  TabFourVC.swift
//  myDemo
//
//  Created by Shaoting Zhou on 2017/12/20.
//  Copyright © 2017年 Shaoting Zhou. All rights reserved.
//  自家孩子 swift4.0 Codable

import UIKit
import Alamofire

private let fourCellIdentifier = "fourCellIdentifier"

class TabFourVC: UIViewController {

    lazy var fourTableView:UITableView = {
        let tabView = UITableView.init(frame: UIScreen.main.bounds)
        tabView.delegate = self
        tabView.dataSource = self
        tabView.rowHeight = 220.0
        tabView.register(FourCell.self, forCellReuseIdentifier: fourCellIdentifier)
        view.addSubview(tabView)
        return tabView
    }()
    var model:FourModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("http://116.211.167.106/api/live/aggregation?uid=133825214&interest=1").responseData { (data) in
            self.model = try! JSONDecoder().decode(FourModel.self, from: data.result.value!)
            self.fourTableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension TabFourVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.lives.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: fourCellIdentifier, for: indexPath) as! FourCell
        cell.model = model.lives[indexPath.row]
        return cell;
    }
    
    
}
