//
//  ViewController.swift
//  CollectionView
//
//  Created by shaoting on 16/3/25.
//  Copyright © 2016年 9elephas. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    var collectionView : UICollectionView?
    var dataAry = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSizeMake(100, 100)
        flowLayout.scrollDirection = UICollectionViewScrollDirection.Vertical // 设置垂直显示
        flowLayout.sectionInset = UIEdgeInsetsMake(1, 1, 1, 1)  //设置边距
        flowLayout.minimumLineSpacing = 1 //设置相邻layout的上下
        flowLayout.minimumInteritemSpacing = 1 //设置相邻layout的左右
        flowLayout.headerReferenceSize = CGSizeMake(0, 0)
    
        
        collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height), collectionViewLayout: flowLayout)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.alwaysBounceVertical = true
        self.view.addSubview(collectionView!)
        collectionView?.backgroundColor = UIColor.whiteColor()
        collectionView?.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")  //注册一个cell
        

        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

     func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        
        return 10
    }
     func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
      let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)  as UICollectionViewCell
      cell.backgroundColor = UIColor.redColor()
        
    
        
        return cell
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

