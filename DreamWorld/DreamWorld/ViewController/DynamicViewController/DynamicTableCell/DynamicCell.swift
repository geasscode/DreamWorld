//
//  DynamicCell.swift
//  DreamWorld
//
//  Created by imac on 14-6-15.
//  Copyright (c) 2014年 imac. All rights reserved.
//

import UIKit

class DynamicCell: UITableViewCell {

    
    
    @IBOutlet var pic : UIImageView!
    
    @IBOutlet var nameLabel : UILabel!
    
    @IBOutlet var recommedLabel : UILabel!

    @IBOutlet var typeLabel : UILabel!
    
    @IBOutlet var timeLabel : UILabel!
    
    
     override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

    }

     required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
     }

  

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
