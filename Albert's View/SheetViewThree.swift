//
//  SheetViewThree.swift
//  Jams story testing
//
//  Created by Albert Florido  on 11/15/23.
//

import SwiftUI

struct SheetViewThree: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text("\(characterNames[0]) Walks into the Fairy God Mother's Cobbleshop and the \(characterNames[3]) is no where to be seen... \(characterNames[0]) walks around the shop curiously, she notices many magical treats and trinkets. She walks down the shoe aisle and looks at the assortment of different shoes for sale. She sees glass slippers, copper slippers, and wood slippers.")
                    .padding()
                HStack {
                    Image("glassSlipper")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Image("woodSlipper")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Image("copperSlipper")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                }
               Text("\"Glass slippers... Fit for a royal princess,\" \"These are too expensive...\" said Cinderella.")
                    .padding(1)
                Text("\"Copper slippers... Fit for anyone who can't affod better\" \"These are too expensive too.\" Said Cinderella.")
                    .padding(1)
                Text("\"Fit for the poorest of poor! Will give splinters! Buy at own risk!\" \"These are all I can afford...\" so Cinderella purchased her new, uncomfortable shoes and left her last 0.02 cents on the counter of the Cobbleshop.")
                    .padding(10)
                
                
                
                
            }
            
            
            
            
        }
    }
}

#Preview {
    SheetViewThree()
}

enum ShoeTypes {
    case glassSlippers
    case copperSlippers
    case woodSlippers
}
func cinderellaLooksAtShoes(shoes: ShoeTypes) -> String {
    switch shoes {
    case .glassSlippers:
        "\"Fit for a royal princess,\" \"These are too expensive...\" said Cinderella."
    case .copperSlippers:
        "\"Fit for anyone who can't afford better,\" \"These are too expensive too...\" said Cinderella."
    case .woodSlippers:
        "\"Fit for the poorest of poor! Will give splinters! Buy at own risk!\" \"These are all I can afford...\" so \(characterNames[0]) purchased her new, uncomfortable shoes and left her last 0.02 cents on the counter of the Cobbleshop."
    }
}
