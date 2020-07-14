//
//  HomepageTableViewCell.swift
//  FinalFantasy
//
//  Created by Nitrogen on 6/6/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit

class HomepageTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var nameCell: UILabel!
    @IBOutlet weak var alterNameCell: UILabel!
    
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var tableViewColor: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        self.cellView.layer.cornerRadius = 7
//        self.cellView.clipsToBounds = true
//        tableViewColor.backgroundColor = .red
        
        print(" 1 cell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
