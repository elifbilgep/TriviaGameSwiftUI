//
//  StartScreen.swift
//  TriviaGameUITests
//
//  Created by Elif Bilge Parlak on 30.07.2023.
//

import Foundation
import XCTest

class StartScreen : BaseScreen {
    
    private enum Identifiers{
        static let triviaHeadlineIdentifier = "TriviaHeadline"
        static let triviaTitleIdentifier = "TriviaTitle"
        static let triviaStartButtonIdentifier = "TriviaStartButton"
    }
    
    private lazy var triviaHeadline = app.staticTexts[Identifiers.triviaHeadlineIdentifier]
    private lazy var triviaTitle = app.staticTexts[Identifiers.triviaTitleIdentifier]
    private lazy var triviaStartButton = app.buttons[Identifiers.triviaStartButtonIdentifier]
    
    lazy var baseElement = triviaStartButton
    
    func validateElementsLoaded(){
        XCTAssertTrue(triviaHeadline.exists)
        XCTAssertTrue(triviaTitle.exists)
        XCTAssertTrue(triviaStartButton.exists)
    }
    
    @discardableResult
    func tapToStartTrivia() -> QuestionScreen {
        triviaStartButton.tap()
        return QuestionScreen()
    }
}
