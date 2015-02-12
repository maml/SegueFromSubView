//
//  Delegation Label.swift
//  hitTest
//

import UIKit

class Delegation_Label: UILabel {

    var delegate: DelegationLabelDelegate?

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        delegate?.didTouchDelegationLabel()
    }
}

protocol DelegationLabelDelegate {
    func didTouchDelegationLabel() -> ()
}
