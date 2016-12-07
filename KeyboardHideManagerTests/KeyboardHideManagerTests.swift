//
//  KeyboardHideManagerTests.swift
//  KeyboardHideManagerTests
//
//  Created by Bondar Yaroslav on 05.12.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import XCTest
@testable import KeyboardHideManager

class KeyboardHideManagerTests: XCTestCase {
    
    let keyboardHideManager = KeyboardHideManager()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddGesture() {
        let view = UIView()
        
        keyboardHideManager.addGesture(to: view)
        
        XCTAssert(view.gestureRecognizers != nil, "view.gestureRecognizers == nil")
        XCTAssert(view.gestureRecognizers!.count == 1, "view.gestureRecognizers!.count != 1")
    }
    
    func testAddTargets() {
        let views = [UIView(), UIView()]
        
        keyboardHideManager.targets = views
        
        for target in keyboardHideManager.targets {
            XCTAssert(target.gestureRecognizers != nil, "target.gestureRecognizers == nil")
            XCTAssert(target.gestureRecognizers!.count == 1, "target.gestureRecognizers!.count != 1")
        }
    }
    
    func testTopSuperview() {
        let view = UIView()
        
        XCTAssert(view.topSuperview == nil, "view.topSuperview != nil")
    }
    
    func testTopSuperview2() {
        let view1 = UIView()
        let view2 = UIView()
        let view3 = UIView()
        view2.addSubview(view3)
        view1.addSubview(view2)
        
        XCTAssert(view3.topSuperview == view1, "view3.topSuperview != view1")
    }
    
    func testDismissKeyboard() {
        let view = UIView()
        let textField = UITextField()
        view.addSubview(textField)
        keyboardHideManager.targets = [view]
        textField.becomeFirstResponder()
        
        keyboardHideManager.dismissKeyboard()
        
        XCTAssert(textField.isFirstResponder == false, "textField.isFirstResponder == true")
    }

    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
