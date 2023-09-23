//
//  ProgressBarView.swift
//  TriviaGame
//
//  Created by Elif Bilge Parlak on 4.07.2023.
//

import SwiftUI

struct ProgressBarView: View {
    var progress : CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: 350,maxHeight: 4)
                .foregroundColor(.accentColor).opacity(0.3)
                .cornerRadius(10)
            Rectangle()
                .frame(maxWidth: progress,maxHeight: 4)
                .foregroundColor(.accentColor)
                .cornerRadius(10)

            
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(progress: 50)
    }
}
