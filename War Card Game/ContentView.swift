//
//  ContentView.swift
//  War Card Game
//
//  Created by Gary Bull on 30/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                        Text(String(playerScore))
                            .padding(.top)
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                        Text(String(cpuScore))
                            .padding(.top)
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .font(.headline)
                .foregroundColor(.white)
            
                Spacer()
            }
        }
    }
    
    func deal() {
//        Randomize the playes card
        
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
//        Randomize the cpus card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
//        Update the scores
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
        else {
            playerScore += 1
            cpuScore += 1
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
