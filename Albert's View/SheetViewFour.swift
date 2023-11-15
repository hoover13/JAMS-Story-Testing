//
//  SheetViewFour.swift
//  Jams story testing
//
//  Created by Albert Florido  on 11/15/23.
//

import SwiftUI

struct SheetViewFour: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text(" As she walks around the shop, she looks out the windows and notices \(characterNames[1]) walking out of the tailor shop with brand new beautiful gowns. \(characterNames[0]) runs over to them and falls to her knees. She begs and pleads to them for help, they laugh and deny her any alms. \"However, there may be something for you...\", said \(characterNames[1]). \"In exchange for being our servant, you can live in the basement with the other pests.\" \(characterNames[0]) woefully agreed, as she didn't have any other options.")
                    .padding()
                Image("stepSisters")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Text("")
            }
        }
    }
}

#Preview {
    SheetViewFour()
}
