//
//  BaseTest.swift
//  TriviaGameUITests
//
//  Created by Elif Bilge Parlak on 30.07.2023.
//

import XCTest

open class BaseTest: XCTestCase {

    private var baseScreen = BaseScreen()
    
    public enum Constants {
        public static let defaultWaitTime = 10.0
        public static let defaultLoadingTime = 30.0
    }
    
    lazy var app = baseScreen.app

    public override func setUp() {
        app.launch()
        app.launchArguments = ["enable-testing"]
        continueAfterFailure = false
    }
    
    public override func tearDown() {
        app.terminate()
    }
}
