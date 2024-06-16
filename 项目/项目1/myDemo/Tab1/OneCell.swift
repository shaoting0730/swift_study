//
//  OneCell.swift
//  myDemo
//
//  Created by Shaoting Zhou on 2017/12/19.
//  Copyright © 2017年 Shaoting Zhou. All rights reserved.
//

import UIKit
import SwiftyJSON
import SDWebImage
class OneCell: UITableViewCell {
    var jsonObj:JSON?{
        didSet{
            nameLabel.text =  String(describing: jsonObj!["creator"]["nick"]) + "-" + String(describing: jsonObj!["city"])
            let str:String = String(describing: jsonObj!["creator"]["portrait"])
            picImgView.sd_setImage(with: URL.init(string: str), completed: nil)            
        }
    }
    
    lazy var nameLabel:UILabel = {
        let la = UILabel.init()
        return la;
    }()
    
    lazy var picImgView:UIImageView = {
        let imgView = UIImageView.init()
        return imgView;
    }()
    

    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        addCons()
    }
    
    
    func setupUI(){
        contentView.addSubview(nameLabel)
        contentView.addSubview(picImgView)
        
    }
    
    func addCons(){
        nameLabel.snp.makeConstraints { (make) in
            make.leftMargin.equalTo(contentView.snp.left).offset(10)
            make.rightMargin.equalTo(contentView.snp.right).offset(-10)
            make.topMargin.equalTo(contentView.snp.top).offset(10)
            make.height.equalTo(50)
        }
        picImgView.snp.makeConstraints { (make) in
            make.leftMargin.equalTo(contentView.snp.left).offset(10)
            make.topMargin.equalTo(nameLabel.snp.bottom).offset(20)
            make.height.width.equalTo(120)
        }
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
