//
//  QuestionView.swift
//  CodeHistory
//
//  Created by Scott Rome on 4/14/22.
//

import SwiftUI

struct QuestionView: View {
    
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                ForEach( 0..<question.possibleAnswers.count, id: \.self ) {answerIndex in
                        Button {
                        print("Tapped an option with the text \(question.possibleAnswers[answerIndex])")
                        viewModel.makeGuess(atIndex: answerIndex)
                        } label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            .background(viewModel.color(forOptionIndex: answerIndex))
                        }
                            .disabled(viewModel.guessWasMade)
                }
            }
            if viewModel.guessWasMade {
                Button(action: {viewModel.displayNextScreen() }) { BottomTextView(str: "Next")
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
        }
    }
}
