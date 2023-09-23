//
//  QuestionTest.swift
//  TriviaGameUITests
//
//  Created by Elif Bilge Parlak on 30.07.2023.
//

import XCTest

final class QuestionTest: BaseTest {

    let questionScreen = QuestionScreen()
    let startScreen = StartScreen()
    let finalScreen = FinalScreen()
    
    
    override func setUp() {
        super.setUp()
        waitForPageLoading(element: questionScreen.baseElement)
    }
    
    func test_ValidateWelcomeScreenItems(){
        questionScreen.validateElementsLoaded()
    }
    

}
