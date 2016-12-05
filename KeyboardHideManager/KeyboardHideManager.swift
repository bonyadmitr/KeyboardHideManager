//
//  KeyboardHideManager.swift
//  KeyboardHideManager
//
//  Created by Bondar Yaroslav on 01.12.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

final public class KeyboardHideManager: NSObject {
    
    @IBOutlet private var targets: [UIView] = [] {
        didSet {
            for target in targets {
                addGesture(to: target)
            }
        }
    }
    
    private func addGesture(to target: UIView) {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        target.addGestureRecognizer(gesture)
    }
    
    @objc private func dismissKeyboard() {
        targets.first?.topSuperview?.endEditing(true)
    }
}

extension UIView {
    fileprivate var topSuperview: UIView? {
        var view = superview
        while view?.superview != nil {
            view = view!.superview
        }
        return view
    }
}
