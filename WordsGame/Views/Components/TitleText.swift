//
//  TitleText.swift
//  WordsGame
//
//  Created by Pavel on 20.07.2022.
//

import SwiftUI

struct TitleText: View {
    
    @State var text = ""
    
    
    var body: some View {
        Text(text)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color("FirstPlayer"))
            .font(.custom("AvenirNext-Bold", size: 42))
            .cornerRadius(20)
            .foregroundColor(.white)
    }
}

struct TitleText_Previews: PreviewProvider {
    static var previews: some View {
        TitleText(text: "Синхрофазотрон")
    }
}
