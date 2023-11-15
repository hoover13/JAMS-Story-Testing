//
//  TestingView.swift
//  Jams story testing
//
//  Created by Hoover on 11/11/23.
//

import SwiftUI

 


 

struct Chapter3View: View {
    @EnvironmentObject var chapterUnlocker: ChapterUnlocker
    @Binding var navigateToNextChapter: Bool
    @State private var storyForChapter3 = ["Chapter begins with Princess on her way to the restroom, the trio lagging not too far behind.", "While the Princess is in the restroom unloosing the caboose, the three covetous women attempt to take her glass slippers from the shoe cupboard and replace them with the cheap plastic knockoffs, but fail due to hearing the latrine flush sooner than expected.", "The trio spend their night looking for an opportunity to make the swap, but can’t find another time to do so.(Attempts: Offering to polish her slippers(Failure due to the princess refusing request), Disguising as the foot massager(Failure due to all eyes being on the shoes), During the shoeless contemporary dance(Failure due to shoes being locked within cage))", "The Princess enjoys the remainder of the night with her Prince. "]
    @State private var currentIndex = 0
    @State private var showAlert = false
    

    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(0..<storyForChapter3.count) { index in
                Text(storyForChapter3[index])
                    .tag(index)
            }
        }
        .padding(25)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .onChange(of: currentIndex) { newIndex in
            if newIndex == storyForChapter3.count - 1 {
                showAlert = true
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("This is the end of Chapter 3"),
                message: Text("Now you can continue to Chapter 4"),
                dismissButton: .default(Text("OK")) {
                    chapterUnlocker.isChapter4Disabled = false
                }
            )
        }
    }
}


struct Chapter4View: View {
    @Binding var navigateToNextChapter: Bool
    var body: some View {
        Text("This is Chapter 4")
    }
}



struct TestingView: View {
    @EnvironmentObject var chapterUnlocker: ChapterUnlocker
    @State private var navigateToNextChapter = false
    
    var body: some View { 
        NavigationView {
            VStack(spacing: 100) {
                NavigationLink(destination: {
                    Chapter1View()
                }, label: {
                    Text("Chapter 1")
                })
                   
                NavigationLink(destination: {
                    Chapter2View()
                        .navigationBarHidden(true)
                }, label: {
                    Text("Chapter 2")
                })
//                .disabled(chapterUnlocker.isChapter2Disabled)
                
                NavigationLink(destination: {
                    Chapter3View(navigateToNextChapter: $navigateToNextChapter)
                }, label: {
                    Text("Chapter 3")
                })
                .disabled(chapterUnlocker.isChapter3Disabled)
                
                NavigationLink(destination: {
                    Chapter4View(navigateToNextChapter: $navigateToNextChapter)
                }, label: {
                    Text("Chapter 4")
                })
                .disabled(chapterUnlocker.isChapter4Disabled)
                
                NavigationLink(destination: {
                    Chapter5View()
                }, label: {
                    Text("Chapter 5")
                })
                .disabled(true)
            }
        }
    }
}

struct ChapterButtonView: View {
    @EnvironmentObject var chapterUnlocker: ChapterUnlocker
    var number: Int

    var body: some View {
        Button(action: {
            // Handle button tap
        }) {
            Text("Chapter \(number)")
                .padding()
                .foregroundColor(.blue)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 2)
                )
        }
    }
}

struct TestingView_Previews: PreviewProvider {
    static var previews: some View {
        TestingView()
            .environmentObject(ChapterUnlocker())
    }
}
