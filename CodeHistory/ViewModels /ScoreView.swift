//
//  ScoreView.swift
//  CodeHistory
//
//  Created by Scott Rome on 4/18/22.
//

import SwiftUI

struct ScoreView: View {
    
    let viewModel: ScoreViewModel
    
    var body: some View {
        
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score")
                    .font(.body)
                Text("\(viewModel.percentage)%")
                    .bold()
                    .font(.system(size: 50))
                    .padding()
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses): ✅")
                    Text("\(viewModel.incorrectGuesses): ❌")
                }
                .font(.system(size: 30))
                Spacer()
                NavigationLink(destination: GameView(),
                               label: { BottomTextView(str: "Play Again!")
                    
                })
                
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 3, incorrectGuesses: 6))
        }
    }
}
