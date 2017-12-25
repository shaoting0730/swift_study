//
//  MyTabBarVC.swift
//  myDemo
//
//  Created by Shaoting Zhou on 2017/12/19.
//  Copyright © 2017年 Shaoting Zhou. All rights reserved.
//

import UIKit

class MyTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVCandRootVC(navTitle: "SwiftyJSON", tabTitle: "①", rootVC: TabOneVC(), img: #imageLiteral(resourceName: "1_tab"), img_selected: #imageLiteral(resourceName: "1_selected"))
        addChildVCandRootVC(navTitle: "HandyJSON", tabTitle: "②", rootVC: TabTwoVC(), img: #imageLiteral(resourceName: "2_tab"), img_selected: #imageLiteral(resourceName: "2_selected"))
        addChildVCandRootVC(navTitle: "ObjectMapper", tabTitle: "③", rootVC: TabThreeVC(), img:#imageLiteral(resourceName: "3_tab"), img_selected:#imageLiteral(resourceName: "3_selected"))
        addChildVCandRootVC(navTitle: "Codable", tabTitle: "④", rootVC: TabFourVC(), img:#imageLiteral(resourceName: "4_tab"), img_selected:#imageLiteral(resourceName: "4_selected"))

        
        // Do any additional setup after loading the view.
    }

    
    func addChildVCandRootVC(navTitle:String,tabTitle:String,rootVC:UIViewController,img:UIImage,img_selected:UIImage){
        let rNav = UINavigationController.init(rootViewController: rootVC)
        rootVC.title = navTitle
        rootVC.tabBarItem.image = img
        rootVC.tabBarItem.selectedImage = img_selected
        rootVC.tabBarItem.title = tabTitle
        self.addChildViewController(rNav)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
