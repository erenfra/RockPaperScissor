//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Renato Oliveira Fraga on 5/19/21.
//

import SwiftUI

struct ContentView: View {
    
    let symbols = ["👊", "✋", "✌️", "🤖"]
    @State private var computerSelection: Int = 3
    @State private var scoreTitle: String = "Result"
    @State private var scoreValue: Int = 0
    
    @State var tapCount = 0
    
    var body: some View {

        
            VStack(alignment: .center){
                
                Text("Rock Paper Scissor")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Spacer()
                Text(symbols[computerSelection])
                    .font(.largeTitle)
                
                Spacer()
                
                HStack(spacing: 50){
                    
                    ForEach (0..<3) {number in
                        Button(symbols[number]) {
                            self.buttonTapped(number)
                            
                        }.font(.largeTitle)
                    }
                }
                Spacer()
                Text(scoreTitle)
                    .fontWeight(.black)
                Spacer()
                Text("\(scoreValue)")
                    .fontWeight(.black)
                Spacer()
          
            }
            
        
    }
    
    func buttonTapped(_ number: Int) {
        
        computerSelection = Int.random(in: 0...2)
        
        if computerSelection == 0 && number == 1 {
            scoreTitle = "WIN"
            scoreValue += 1
        } else if computerSelection == 0 && number == 2 {
            scoreTitle = "LOOSE"
            scoreValue -= 1
        } else if computerSelection == 1 && number == 0 {
            scoreTitle = "LOOSE"
            scoreValue -= 1
        } else if computerSelection == 1 && number == 2 {
            scoreTitle = "WIN"
            scoreValue += 1
        } else if computerSelection == 2 && number == 0 {
            scoreTitle = "WIN"
            scoreValue += 1
        } else if computerSelection == 2 && number == 1 {
            scoreTitle = "LOOSE"
            scoreValue -= 1
        } else {
            scoreTitle = "DRAW"
            
        }

        
    }

        
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
