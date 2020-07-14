//
//  WelcomeViewController.swift
//  FinalFantasy
//
//  Created by Nitrogen on 6/6/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.welcomeButton.layer.cornerRadius = 7
        self.welcomeButton.clipsToBounds = true
        
        self.navigationController!.navigationBar.barStyle = .black
        self.navigationController!.navigationBar.isTranslucent = true
        self.navigationController!.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        self.navigationController!.navigationBar.tintColor = #colorLiteral(red: 1, green: 0.99997437, blue: 0.9999912977, alpha: 1)
        
        /// Hides back button of Navigation Controller
//        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToHome", sender: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        self.welcomeButton.layer.cornerRadius = 10
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
}
