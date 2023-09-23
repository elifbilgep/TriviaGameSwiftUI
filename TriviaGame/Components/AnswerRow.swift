//
//  AnswerRow.swift
//  TriviaGame
//
//  Created by Elif Bilge Parlak on 4.07.2023.
//

import SwiftUI

struct AnswerRow: View {
    var answer : Answer
    @EnvironmentObject var triviaManager : TriviaManager
    @State private var isSelected : Bool = false
    
    var body: some View {
        HStack(spacing:20){
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.text)
                .bold()
            
            if isSelected {
                Spacer()
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? .green : .red)
            }
        }
        .padding()
        .frame(maxWidth: .infinity,alignment: .leading)
        .foregroundColor(triviaManager.answerSelected ? (isSelected ?  Color.accentColor : .gray) : .accentColor)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrect ? .green : .red) : .gray, radius: 5, x: 0.5 , y: 0.5)
        .onTapGesture {
            if !triviaManager.answerSelected{
                isSelected = true
                triviaManager.selectAnswer(answer: answer)
            }
        }
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Single", isCorrect: false)).environmentObject(TriviaManager())
    }
}
