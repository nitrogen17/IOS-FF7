//
//  ViewController.swift
//  FinalFantasy
//
//  Created by Nitrogen on 6/4/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit

private let reusableCell = "tableCell"

class HomepageViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Properties
    
    @IBOutlet weak var homepageTableView: UITableView!
    
    var homepageArr: [TableData] = []
    
    //MARK: - Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homepageArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableCell, for: indexPath) as! HomepageTableViewCell
        
        cell.nameCell.text = homepageArr[indexPath.row].name
        cell.alterNameCell.text = homepageArr[indexPath.row].description
        cell.imageCell.image = UIImage(named: homepageArr[indexPath.row].imageName)
        
        return cell
    }
    
    //MARK: - Delegate
    
    var tempObject: TableData = TableData()
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tempObject = homepageArr[indexPath.row]
        
        self.performSegue(withIdentifier: "goToStatus", sender: self)
    }
    
    //MARK: - Prepare Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToStatus" {
            let destinationVC = segue.destination as! StatusViewController
            
            destinationVC.statusData = tempObject
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homepageTableView.register(UINib(nibName: "HomepageTableViewCell", bundle: nil), forCellReuseIdentifier: reusableCell)
        
        self.navigationItem.hidesBackButton = true
        
        homepageArr.append(TableData("Cloud Strife", "Ex-Soldier","クラウド・ストライフ", "Former 1st Class SOLDIER. After defecting from Shinra, Cloud began work as a mercenary for hire in Midgar. With his trusty broadsword in hand, he always gets the job done.", "Cloud", "bg6"))
        
        homepageArr.append(TableData("Aerith", "The Flower Girl","エアリス・ゲインズブール", "Young, beautiful, and somewhat mysterious, Aerith met Cloud while selling flowers on the streets of Midgar.", "Aerith", "bg2"))
        
        homepageArr.append(TableData("Sephiroth", "One-Winged Angel","セフィロス", "There was one SOLDIER named Sephiroth, who was better than the rest, but when he found out about the terrible experiments that made him, he began to hate Shinra.", "Sephiroth", "bg5"))
        
    }
}

