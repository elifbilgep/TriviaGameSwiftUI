//
//  TriviaView.swift
//  TriviaGame
//
//  Created by Elif Bilge Parlak on 4.07.2023.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager : TriviaManager
    var body: some View {
        if triviaManager.reachedEnd{
            VStack(spacing: 20){
                Text("Trivia Game")
                    .lilacTitle()
                    .accessibilityIdentifier("TriviaFinalHeadline")
                Text("Congrats! You completed the game! 🥳")
                    .accessibilityIdentifier("TriviaFinalTitle")
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                    .accessibilityIdentifier("TriviaFinalScore")
                
                Button {
                    Task{
                       await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButon(text: "Play Again")
                        .accessibilityIdentifier("TriviaFinalRestartButton")
                }

            }.foregroundColor(.accentColor)
                .padding()
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color("BackgroundColor"))
        }else{
            QuestionView().environmentObject(triviaManager)
        }
        
        
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView().environmentObject(TriviaManager())
    }
}
