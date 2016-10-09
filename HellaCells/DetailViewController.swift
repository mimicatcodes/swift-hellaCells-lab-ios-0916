//
//  DetailViewController.swift
//  HellaCells
//
//  Created by Mirim An on 10/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {
    var number: String?
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let number = number {
            navigationItem.title = number
            numberLabel.text = number
        }
    }


}
