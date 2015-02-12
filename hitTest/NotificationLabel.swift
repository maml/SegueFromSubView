//
//  NotificationLabel.swift
//  hitTest
//
//  Created by Matthew Loseke on 2/11/15.
//  Copyright (c) 2015 Matthew Loseke. All rights reserved.
//

import UIKit

class NotificationLabel: UILabel {

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        let nc = NSNotificationCenter.defaultCenter()
        nc.postNotificationName("performSegue", object: nil)
    }

}
