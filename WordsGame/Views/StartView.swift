//
//  ContentView.swift
//  WordsGame
//
//  Created by Pavel on 20.07.2022.
//

import SwiftUI

struct StartView: View {
    
    @State var bigWord = ""
    @State var player1 = ""
    @State var player2 = ""
    
    @State var isShowedGame = false
    
    var body: some View {
        VStack {
            
        TitleText(text: "WordsGame")
        WordsTextField(word: $bigWord, placeholder: "Введите слово...")
            .padding(20)
            .padding(.top, 32)
            
        WordsTextField(word: $player1, placeholder: "Игрок 1")
            .cornerRadius(16)
            .padding(.horizontal, 20)
            
        WordsTextField(word: $player2, placeholder: "Игрок 2")
            .cornerRadius(16)
            .padding(.horizontal, 20)
            
        Button {
            isShowedGame.toggle()
            } label: {
        Text("Старт")
            .font(.custom("AvenirNext-Bold", size: 30))
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal, 50)
            .background(Color("FirstPlayer"))
            .cornerRadius(16)
            .padding(.top)
            }
        }.background(Image("background"))
            .fullScreenCover(isPresented: $isShowedGame) {
                
                let player1 = Player(name: self.player1)
                let player2 = Player(name: self.player2)
                
                let gameViewVodel = GameViewModel(player1: player1,
                                                  player2: player2,
                                                  word: bigWord)
                
                
                
                GameView(viewModel: gameViewVodel)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
