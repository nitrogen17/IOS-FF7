//
//  StatusViewController.swift
//  FinalFantasy
//
//  Created by Nitrogen on 6/4/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit

class StatusViewController: UIViewController {
    
    @IBOutlet weak var statusImage: UIImageView!
    @IBOutlet weak var statusName: UILabel!
    @IBOutlet weak var statusKName: UILabel!
    @IBOutlet weak var statusAlterName: UILabel!
    @IBOutlet weak var statusDescription: UILabel!
    @IBOutlet weak var statusBackground: UIImageView!
    @IBOutlet weak var informationButton: UIButton!
    
    var statusData: TableData = TableData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        statusImage.image = UIImage(named: statusData.imageName)
        statusName.text = statusData.name
        statusKName.text = statusData.alterName
        statusAlterName.text = statusData.koreanName
        statusDescription.text = statusData.description
        statusBackground.image = UIImage(named: statusData.background)
        
        self.informationButton.layer.cornerRadius = 5
        self.informationButton.clipsToBounds = true
        
        if statusData.name == "Aerith" {
            statusDescription.textColor = .white
            statusName.textColor = .white
            statusKName.textColor = .white
            statusAlterName.textColor = .white
        }
    }
    @IBAction func clickInformation(_ sender: UIButton) {
        let dialogMessage = UIAlertController(title: statusData.name, message: "PROTOTYPE", preferredStyle: .alert)
        
        /// Action Handler
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
         })
        
        dialogMessage.addAction(ok)
        
        self.present(dialogMessage, animated: true, completion: nil)
    }
}
