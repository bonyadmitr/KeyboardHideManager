//
//  KeyboardHideManager.swift
//  KeyboardHideManager
//
//  Created by Bondar Yaroslav on 01.12.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

/// Codeless manager to hide keyboard by tapping on views for iOS written in Swift.
///
/// Usage:
/// 1. Drag Object from Object library
/// 2. Setup KeyboardHideManager in Class field
/// 3. Connect views with targets
///
/// Target must be UIView subclass and user iteraction enabled is on.
/// To use with xib you must add strong property to controller.
///
/// See ReadMe for screenshots and more details

final public class KeyboardHideManager: NSObject {
    
    /// Here will be saved targets added from IB
    @IBOutlet internal var targets: [UIView]! {
        didSet {
            for target in targets {
                addGesture(to: target)
            }
        }
    }
    
    /// Add UITapGestureRecognizer with action dismissKeyboard
    /// - Parameter target: A target that will be used to add gesture
    internal func addGesture(to target: UIView) {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        gesture.cancelsTouchesInView = false
        target.addGestureRecognizer(gesture)
    }
    
    /// Will find top superview of any taget and execute endEditing(true)
    @objc internal func dismissKeyboard() {
        targets.first?.topSuperview?.endEditing(true)
    }
}

extension UIView {
    /// Will find top superview of view
    internal var topSuperview: UIView? {
        var view = superview
        while view?.superview != nil {
            view = view!.superview
        }
        return view
    }
}
