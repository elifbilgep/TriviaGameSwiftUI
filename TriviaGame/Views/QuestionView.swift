//
//  QuestionFile.swift
//  TriviaGame
//
//  Created by Elif Bilge Parlak on 4.07.2023.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager : TriviaManager 
    
    var body: some View {
        VStack(spacing: 40){
            HStack{
                Text("Trivia Game").lilacTitle()
                Spacer()
                Text("\(triviaManager.index + 1) out of \(triviaManager.length)")
                    .foregroundColor(.accentColor)
                    .fontWeight(.heavy)
            }
            ProgressBarView(progress: triviaManager.progress)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(triviaManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                    .accessibilityIdentifier("TriviaQuestion")
                
                ForEach(triviaManager.answerChoices,id: \.id) { answer in
                    AnswerRow(answer: answer).environmentObject(triviaManager)
                        .accessibilityIdentifier("TriviaAnswerRow-\(answer.isCorrect)")
                }
                
            }
            Button {
                triviaManager.goToNextQuestion()
            } label: {
                PrimaryButon(text: "Next",backgroundColor: triviaManager.answerSelected ? .accentColor : .gray)
            }.disabled(!triviaManager.answerSelected)
                .accessibilityIdentifier("TriviaNextButton")

          
            
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BackgroundColor"))
        .navigationBarHidden(true)
    }
}

struct QuestionView_Preview: PreviewProvider {
    static var previews: some View {
        QuestionView().environmentObject(TriviaManager())
    }
}
