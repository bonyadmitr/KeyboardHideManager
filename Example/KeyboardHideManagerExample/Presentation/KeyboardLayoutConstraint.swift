//
//  KeyboardLayoutConstraint.swift
//  KeyboardLayoutConstraint
//
//  Created by Bondar Yaroslav on 14/02/2017.
//  Copyright © 2017 Bondar Yaroslav. All rights reserved.
//

import UIKit

final public class KeyboardLayoutConstraint: NSLayoutConstraint {
    
    /// used class var bcz instance var = 0
    static let tabBarHeight: CGFloat = 49
    
    @IBInspectable public var keyboardInset: CGFloat = 1000
    @IBInspectable public var initialInset: CGFloat = 0
    @IBInspectable public var isTabBar: Bool = false
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShowNotification), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHideNotification), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc private func keyboardWillShowNotification(notification: NSNotification) {
            guard
                let userInfo = notification.userInfo,
                let keyboardFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue
            else {
                return
            }
        
        constant = keyboardFrame.size.height + keyboardInset
        if isTabBar {
            constant -= KeyboardLayoutConstraint.tabBarHeight
        }
        layoutIfNeededWithAnimation()
    }
    
    @objc private func keyboardWillHideNotification(notification: NSNotification) {
        constant = initialInset
        layoutIfNeededWithAnimation()
    }
    
    private func layoutIfNeededWithAnimation() {
        /// 1. view.window or view.superview ???
        /// 2. maybe there is a better way to update layout
        if let view = secondItem as? UIView, let superview = view.superview {
            superview.layoutIfNeeded()
        } else if let view = firstItem as? UIView, let superview = view.superview {
            superview.layoutIfNeeded()
        }
    }
}
