//
//  YoutubeTableViewCell.swift
//  WhatsHot
//
//  Created by nitul shah on 10/14/18.
//  Copyright © 2018 CMU. All rights reserved.
//

import UIKit

class YoutubeTableViewCell: UITableViewCell {

    //MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var thumbnailViewLabel: UIImageView!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var videoViewsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
