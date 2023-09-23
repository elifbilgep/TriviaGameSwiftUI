//
//  Extensions.swift
//  TriviaGame
//
//  Created by Elif Bilge Parlak on 3.07.2023.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View{
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color.accentColor)
    }
}
