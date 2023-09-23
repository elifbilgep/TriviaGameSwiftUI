//
//  QuestionScreen.swift
//  TriviaGameUITests
//
//  Created by Elif Bilge Parlak on 30.07.2023.
//

import Foundation
import XCTest

class QuestionScreen : BaseScreen{
    private enum Identifiers {
        static let triviaQuestionIdentifier = "TriviaQuestion"
        static let triviaAnswerRowIdentifier = "TriviaAnswerRow-true"
        static let triviaNextQuestionButtonIdentidier = "TriviaNextButton"
    }
    
    private lazy var question = app.staticTexts[Identifiers.triviaQuestionIdentifier]
    private lazy var answerRow = app.staticTexts[Identifiers.triviaAnswerRowIdentifier]
    private lazy var nextQuestionButton = app.buttons[Identifiers.triviaNextQuestionButtonIdentidier]
    lazy var baseElement = answerRow
    
    var questionNumber : Int = 1
    
    func validateElementsLoaded(){
        XCTAssertTrue(question.exists)
        XCTAssertTrue(answerRow.exists)
        XCTAssertTrue(nextQuestionButton.exists)
    }
    
    @discardableResult
    func tapNexQuestionButton() -> BaseScreen {
        while questionNumber <= 11{ //11. -> final ekran olıucak
            
            if questionNumber <= 10{
                chooseAnswerTrue()
                questionNumber += 1
                nextQuestionButton.tap()
                
                if (questionNumber != 11 ){
                    tapNexQuestionButton()
                }else{
                    break
                }
            }
            else if(questionNumber == 11){//11 olma durumu
                return FinalScreen()
                
            }
        }
        return BaseScreen()
    }
    
    @discardableResult
    func chooseAnswerTrue() -> Self{
        answerRow.tap()
        return self
        
    }
}

