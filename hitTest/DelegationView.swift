//
//  DelegationView.swift
//  hitTest
//

import UIKit

class DelegationView: UIView, DelegationLabelDelegate {

    @IBOutlet weak var delegationLabel: Delegation_Label?
    
    var delegate: DelegationViewDelegate?
    
    override func awakeFromNib() {
        delegationLabel?.delegate = self
    }
    
    func didTouchDelegationLabel() {
        delegate?.didTouchDelegationView()
    }
}

protocol DelegationViewDelegate {
    func didTouchDelegationView() -> ()
}