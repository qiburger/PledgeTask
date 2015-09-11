//
//  ListViewController.swift
//  ScavengerHunt2
//
//  Created by Qi He on Sep/3/15.
//  Copyright (c) 2015 Qi He. All rights reserved.
//

import Foundation
import UIKit

class ListViewController: UITableViewController {
    
    var itemsList = [ScavengerHuntItm(name: "Cat"), ScavengerHuntItm(name: "🍕"), ScavengerHuntItm(name: "🐶")]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsList.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ListViewCell", forIndexPath: indexPath) as! UITableViewCell
        
        let item = itemsList[indexPath.row]
        cell.textLabel?.text = item.name
        
        return cell
    }
    
    @IBAction func unwindToList(segue: UIStoryboardSegue) {
        if segue.identifier == "DoneItem" {
            let addVC = segue.sourceViewController as! AddViewController
            if let newItem = addVC.newItem {
                itemsList += [newItem]
                let indexPath = NSIndexPath(forRow: itemsList.count - 1, inSection: 0)
                tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            }
        }
        
    }
}