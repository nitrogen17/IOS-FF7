//
//  WelcomeViewController.swift
//  FinalFantasy
//
//  Created by Nitrogen on 6/6/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomRefresher: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationController()
        makeSegueAfterFourSeconds()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}

extension WelcomeViewController {
 
    private func setupNavigationController() {
        self.navigationController!.navigationBar.barStyle = .black
        self.navigationController!.navigationBar.isTranslucent = true
        self.navigationController!.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        self.navigationController!.navigationBar.tintColor = #colorLiteral(red: 1, green: 0.99997437, blue: 0.9999912977, alpha: 1)
    }
    
    private func makeSegueAfterFourSeconds() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.welcomRefresher.isHidden = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.performSegue(withIdentifier: "goToHome", sender: self)
            }
            
        }
    }
    
}
