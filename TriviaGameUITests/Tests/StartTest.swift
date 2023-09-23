//
//  StartTest.swift
//  TriviaGameUITests
//
//  Created by Elif Bilge Parlak on 30.07.2023.
//

import XCTest

final class StartTest: BaseTest {
    
    let startScreen = StartScreen()
    let finalScreen = FinalScreen()
    
    func test_ValidateStartScreenItems(){
        startScreen.validateElementsLoaded()
    }
    
    func testStartFlow(){
      let result =  startScreen
            .tapToStartTrivia()
            .chooseAnswerTrue()
            .tapNexQuestionButton()
        
        if result is FinalScreen {
                        finalScreen.tapRestartButton()
            sleep(4)
        }
    }
    
    func testNavigation(){
        startScreen.tapToStartTrivia()
    }
}
