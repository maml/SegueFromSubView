//
//  BubbleLabel.swift
//  hitTest
//

import UIKit

class BubbleLabel: UILabel {

    var segueToPerform: String?     // set as runtime attribute in Storyboard
    let selector: Selector = Selector("performSegueWithIdentifier")
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        if segueToPerform != nil {
            
            var nextResponder: UIResponder? = self.nextResponder()
            
            while let nr = nextResponder {
                
                if nr.respondsToSelector("performSegueWithIdentifier:sender:") {
                    
                    let vc = nr as UIViewController
                    vc.performSegueWithIdentifier(segueToPerform!, sender: self)
                    return
                }
                
                nextResponder = nextResponder?.nextResponder()
            }
        }
    }
}
