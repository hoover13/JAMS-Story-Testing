//
//  SheetViewTwo.swift
//  Jams story testing
//
//  Created by Albert Florido  on 11/15/23.
//

import SwiftUI
let characterNames = ["Cinderella", "Anastasia and Drizella", "Prince Charles", "Fairy God Mother", "Drizella", "Anastasia"]


struct SheetViewTwo: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text("In walks \(characterNames[2])... \"\(characterNames[0]), the wedding is off. I can't believe you've done this. It's over, smell you later.\"")
                    .padding()
                Image("road")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 150)
                Text("While walking down the road aimlessly, defeated and heartbroken, \(characterNames[0]) notices the Fairy God Mother's Cobbleshop. \"I know that old hag has something to do with this\", she said. \"I'm gonna go in there and give her a piece of my mind, I know she had a hand to play in all this.\"")
                    .padding()
                Image("shop")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 280)
                
                
                
            
              
                    
                }
               
                
                
                
            }
        }
    }


#Preview {
    SheetViewTwo()
}


