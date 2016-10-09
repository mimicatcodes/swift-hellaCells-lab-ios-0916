//
//  MainTableViewController.swift
//  HellaCells
//
//  Created by Mirim An on 10/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    var numbersArray = Array(1...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numbersArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        
        let number = numbersArray[indexPath.row]
        cell.textLabel?.text = String(number)

        return cell
    }


    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "firstSegue" { return }
        
            if let destination = segue.destination as? DetailViewController,
            let indexPath = tableView.indexPathForSelectedRow {
                
                destination.number = String(numbersArray[indexPath.row])
            }
        }
}
    


