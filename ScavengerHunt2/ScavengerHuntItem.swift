//
//  ScavengerHuntItem.swift
//  ScavengerHunt2
//
//  Created by 赫麒 on Sep/3/15.
//  Copyright (c) 2015 Qi He. All rights reserved.
//

import Foundation
import UIKit

class ScavengerHuntItm: NSObject {
    
    let name: String
    var photo: UIImage?
    var isComplete: Bool {
        get{
            return photo != nil
        }
    }
        
    init(name: String){
        self.name = name
    }
}