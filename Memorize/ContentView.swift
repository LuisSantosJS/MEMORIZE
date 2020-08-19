//
//  ContentView.swift
//  Memorize
//
//  Created by Luis Santos on 17/08/20.
//  Copyright © 2020 Luis Santos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return HStack(){
            ForEach(0..<4){ index in
               CardView(isFaceUp: false)
            }
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)

    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View{
        ZStack{
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth:3)
                Text("👻")
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}
