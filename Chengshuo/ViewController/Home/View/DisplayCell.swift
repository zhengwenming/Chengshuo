//
//  DisplayCell.swift
//  WenmingSwiftDemo
//
//  Created by zhengwenming on 2016/10/23.
//  Copyright © 2016年 zhengwenming. All rights reserved.
//

import UIKit

class DisplayCell: UITableViewCell {
    ///头像
    var avatarIV:UIImageView? = nil;
    ///名字
    var nameLabel:UILabel? = nil;
    ///头衔
    var titleLabel:UILabel? = nil;
    ///日期
    var dateLabel:UILabel? = nil;
    
    ///日期
    var textDesLabel:UILabel? = nil;
    
    override func awakeFromNib() {
        super.awakeFromNib()

    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }

}
