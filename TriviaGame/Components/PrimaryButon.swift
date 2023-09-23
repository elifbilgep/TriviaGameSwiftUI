//
//  PrimaryButon.swift
//  TriviaGame
//
//  Created by Elif Bilge Parlak on 3.07.2023.
//

import SwiftUI

struct PrimaryButon: View {
    var text : String
    var backgroundColor : Color = Color("AccentColor")
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(backgroundColor)
            .cornerRadius(10)
            .shadow(radius: 5)
        
    }
}

struct PrimaryButon_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButon(text: "Next")
    }
}
