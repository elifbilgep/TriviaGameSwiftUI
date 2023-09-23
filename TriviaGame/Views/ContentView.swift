//
//  ContentView.swift
//  TriviaGame
//
//  Created by Elif Bilge Parlak on 3.07.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack (spacing:40){
                Image("ask")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                VStack(spacing: 20){
                    Text("Trivia Game").lilacTitle()
                        .accessibilityIdentifier("TriviaHeadline")
                       
                    Text("Are you ready to test out\n your Trivia skills?")
                        .foregroundColor(.accentColor)
                        .multilineTextAlignment(.center)
                        .accessibilityIdentifier("TriviaText")
                }
                
                NavigationLink{
                    TriviaView().environmentObject(triviaManager)
                } label:{
                    PrimaryButon(text: "Let's Go").accessibilityIdentifier("TriviaStartButton")
                }
                
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        .background(Color("BackgroundColor"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
