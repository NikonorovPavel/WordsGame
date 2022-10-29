//
//  GameView.swift
//  WordsGame
//
//  Created by Pavel on 20.07.2022.
//

import SwiftUI

struct GameView: View {
    @State private var word = ""
    var viewModel: GameViewModel
    var body: some View {
        
        VStack(spacing: 16) {
            HStack {
                Button {
                    print("Quit")
                } label: {
                    Text("Выход")
                        .padding(6)
                        .padding(.horizontal)
                        .background(Color("Color"))
                        .cornerRadius(12)
                        .padding(6)
                        .foregroundColor(.white)
                        .font(.custom("AvenirNext-Bold", size: 18))
                }
                Spacer()
            }
            
            Text(viewModel.word)
                .font(.custom("AvenirNext-Bold", size: 29))
                .foregroundColor(.white)
            
            HStack(spacing: 12) {
                VStack {
                    Text("\(viewModel.player1.score)")
                        .font(.custom("AvenirNext-Bold", size: 60))
                        .foregroundColor(.white)
                    Text("\(viewModel.player1.name)")
                        .font(.custom("AvenirNext-Bold", size: 24))
                        .foregroundColor(.white)
                    
                }.padding(20)
                    .frame(width: screen.width / 2.2, height: screen.width / 2.2)
                    .background(Color("FirstPlayer"))
                    .cornerRadius(26)
                    .shadow(color: .red, radius: 4, x: 0, y: 0)
                
                VStack {
                    Text("\(viewModel.player2.score)")
                        .font(.custom("AvenirNext-Bold", size: 60))
                        .foregroundColor(.white)
                    Text("\(viewModel.player2.name)")
                        .font(.custom("AvenirNext-Bold", size: 24))
                        .foregroundColor(.white)
                    
                }.padding(20)
                    .frame(width: screen.width / 2.2, height: screen.width / 2.2)
                    .background(Color("SecondPlayer"))
                    .cornerRadius(26)
                    .shadow(color: .purple, radius: 4, x: 0, y: 0)
            }
            
            WordsTextField(word: $word, placeholder: "Ваше слово...")
                .padding(.horizontal)
            
            Button {
                let score = viewModel.check(word: word)
                if score > 1 {
                    self.word = ""
                }
            
            } label: {
                Text("Готово")
                    .padding(12)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .background(Color("Color"))
                    .cornerRadius(12)
                    .font(.custom("AvenirNext-Bold", size: 26))
                    .padding(.horizontal)
            }
            List {
                
            }.listStyle(.plain)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            
        } .background(Image("background"))
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(viewModel: GameViewModel(player1: Player(name: "Иван"),
                                          player2: Player(name: "Саша"),
                                          word: "Превысокомногорассмотрительствующий"))
    }
}
