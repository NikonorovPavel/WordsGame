//
//  WordsTextField.swift
//  WordsGame
//
//  Created by Pavel on 20.07.2022.
//

import SwiftUI

struct WordsTextField: View {
    
    @State var word: Binding<String>
    var placeholder: String
    
    var body: some View {
        TextField(placeholder, text: word)
            .font(.title2)
            .padding()
            .background(Color.white)
            .cornerRadius(16)
    }
}


