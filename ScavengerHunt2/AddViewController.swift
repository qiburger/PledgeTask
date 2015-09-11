//
//  AddViewController.swift
//  ScavengerHunt2
//
//  Created by 赫麒 on Sep/3/15.
//  Copyright (c) 2015 Qi He. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    var newItem: ScavengerHuntItm?
    
    @IBAction func cancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DoneItem" {
            if let name = textField.text {
                if !name.isEmpty {
                   
                    newItem = ScavengerHuntItm(name: name)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

