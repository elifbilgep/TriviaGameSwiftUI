//
//  Answer.swift
//  TriviaGame
//
//  Created by Elif Bilge Parlak on 4.07.2023.
//

import Foundation

struct Answer : Identifiable{
    var id = UUID()
    var text : AttributedString
    var isCorrect : Bool
}
