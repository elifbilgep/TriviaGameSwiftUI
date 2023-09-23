//
//  FinalScreen.swift
//  TriviaGameUITests
//
//  Created by Elif Bilge Parlak on 30.07.2023.
//

import Foundation
import XCTest

class FinalScreen : BaseScreen{
    
    private enum Identifiers {
        static let finalHeadlineIdentifier = "TriviaFinalHeadline"
        static let finalTitleIdentifier = "TriviaFinalTitle"
        static let finalRestartButton = "TriviaFinalRestartButton"
    }
    
    private lazy var finalHeadline = app.staticTexts[Identifiers.finalHeadlineIdentifier]
    private lazy var finalTitle = app.staticTexts[Identifiers.finalTitleIdentifier]
    private lazy var finalRestartButton = app.buttons[Identifiers.finalRestartButton]
    
    func validateElementsLoaded(){
        XCTAssertTrue(finalHeadline.exists)
        XCTAssertTrue(finalTitle.exists)
        XCTAssertTrue(finalRestartButton.exists)
    }
    
    @discardableResult
    func tapRestartButton() -> Self{
        finalRestartButton.tap()
        return self
    }
}
