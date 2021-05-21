//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by admin on 5/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDie = 1
    @State var rightDie = 2
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(number: leftDie)
                    DiceView(number: rightDie)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    leftDie = Int.random(in: 1...6)
                    rightDie = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    
    let number: Int
    
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
