//
//  HellaMasterTableViewController.swift
//  HellaCells
//
//  Created by Mirim An on 10/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaMasterTableViewController: UITableViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    var number: String?
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        if let number = number {
            numberLabel.text = number
            navigationItem.title = number
        }
        
        
    }

    
}
