//
//  SheetViewFive.swift
//  Jams story testing
//
//  Created by Albert Florido  on 11/15/23.
//

import SwiftUI

struct SheetViewFive: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Image("finalPicture")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                Text(" \(characterNames[0]) lived in the basement of her evil step familys house, from rags to riches, she never learned the truth of that night. How \(characterNames[1]) sold her slippers to the \(characterNames[3]), where they sit behind the shops window, glistening, for all to see. ")
                    .padding()
                Spacer()
                Image("glassSlipper")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Spacer()
                Text("To be continued...")
                Spacer()
                
                
            }
        }
    }
}

#Preview {
    SheetViewFive()
}
