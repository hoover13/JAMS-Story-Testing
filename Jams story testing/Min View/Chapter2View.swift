//
//  Chapter2View.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/13/23.
//



import SwiftUI

struct Chapter2View: View {
    @EnvironmentObject var chapterUnlocker: ChapterUnlocker
    
    @State private var titleText = ""
    @State private var showButton = false
    let fullTitleText = """
This Cinderella Story is
 created by
 JAMS......
the key 🔑 to unlock
the next chapter of
your journey is
 to pass
the quiz game🎮
Good Luck 🍀....

 
"""
    
    var body: some View {
        NavigationView {
            VStack {
                Text(titleText)
                    .font(.title)
                    .padding()
                    .onAppear {
                        for (index, letter) in fullTitleText.enumerated() {
                            // Use Timer to delay each character's appearance
                            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(index), repeats: false) { (_) in
                                titleText.append(letter)
                                
                                if index == fullTitleText.count - 1 {
                                    withAnimation {
                                        showButton = true
                                    }
                                }
                            }
                        }
                    }
                
                if showButton {
                    NavigationLink(destination: {
                        Chapter2GameView()
                            .navigationBarHidden(true)
                    }, label: {
                        Text("Play")
                            .font(.largeTitle)
                            .frame(width: 150, height: 50)
                            .background(Color.blue)
                            .foregroundStyle(.white)
                            .cornerRadius(10)
                    })
                }
                
            }
            
        }
    }
}

#Preview {
    Chapter2View()
}
