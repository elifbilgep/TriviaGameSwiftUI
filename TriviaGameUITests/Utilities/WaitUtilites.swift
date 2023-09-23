//
//  WaitUtilites.swift
//  TriviaGameUITests
//
//  Created by Elif Bilge Parlak on 30.07.2023.
//

import Foundation
import XCTest

public func waitUntilElementDisappear(element: XCUIElement, timeOut: Double = BaseTest.Constants.defaultWaitTime){
    var elementVisible = true
    let startTime = NSDate().timeIntervalSince1970
    
    while (NSDate().timeIntervalSince1970 - startTime) < timeOut {
           if !element.exists {
               elementVisible = false
               break
           }
           usleep(300_000) // 300ms
       }
    XCTAssertFalse(elementVisible, "\(element) is still visible")
}

func waitForPageLoading(element: XCUIElement) {
    XCTAssertTrue(element.waitForExistence(timeout: BaseTest.Constants.defaultLoadingTime))
}
