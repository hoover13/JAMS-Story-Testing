//
//  Chapter1View.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/13/23.
//

import SwiftUI

struct Chapter1View: View {
    @EnvironmentObject var chapterUnlocker: ChapterUnlocker
    
    @State private var number = 0
    var body: some View {
        VStack {
            Text("This is Chapter 1")
                .font(.largeTitle)
            Image(systemName: "person")
                .font(.system(size: 200))
            
            Text("If you want to unlock Chapter 2.. tap the button till the number becomes 10")
                .font(.largeTitle)
             
            Text("\(number)")
                .font(.system(size: 200))
                .bold()
             
            Button("Tap") {
                number += 1
                if number == 10 {
                    chapterUnlocker.isChapter2Disabled = false
                }
            }
        }
        .padding(20)
    }
}


#Preview {
    Chapter1View()
}
