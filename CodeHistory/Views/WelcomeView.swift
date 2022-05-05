//
//  WelcomeView.swift
//  CodeHistory
//
//  Created by Scott Rome on 4/5/22.
//

import SwiftUI

struct WelcomeView: View {
    
    //let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    //let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    var body: some View {
        
        NavigationView {
            
            ZStack{
                GameColor.main.ignoresSafeArea()
                VStack{
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                    Text("Select the correct answers to the following questions.")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .padding()
                    }
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Ok, Let's Go!")
                        })
                    
                }
                .foregroundColor(.white)
            }
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
