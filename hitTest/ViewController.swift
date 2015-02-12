//
//  ViewController.swift
//  hitTest
//

import UIKit

class ViewController: UIViewController, DelegationViewDelegate {

    @IBOutlet weak var delegationView: DelegationView?
    let nc = NSNotificationCenter.defaultCenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegationView?.delegate = self
        nc.addObserver(self, selector: "performSegue", name: "performSegue", object: nil)
    }

    func didTouchDelegationView() {
        performSegue()
    }
    
    func performSegue() {
        self.performSegueWithIdentifier("vc2Destination", sender: nil)
    }    
}

