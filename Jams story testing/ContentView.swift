////
////  ContentView.swift
////  Jams story testing
////
////  Created by Hoover on 11/11/23.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//        
//                
//                VStack {
//                    NavigationLink(destination: ChapterView(chapterNumber: 1), label: {
//                        ChapterButton(chapterNumber: 1, isUnlocked: true) // Chapter 1 is unlocked by default
//                    })
//                    .padding()
//
//                    NavigationLink(destination: ChapterView(chapterNumber: 2), isActive: .constant(true)) {
//                        ChapterButton(chapterNumber: 2, isUnlocked: true) // Chapter 2 is initially locked
//                    }
//                    .padding()
//     
//                    NavigationLink(destination: ChapterView(chapterNumber: 3), isActive: .constant(true)) {
//                        ChapterButton(chapterNumber: 3, isUnlocked: true) // Chapter 3 is initially locked
//                    }
//                    .padding()
//
//                    NavigationLink(destination: ChapterView(chapterNumber: 4), isActive: .constant(false)) {
//                        ChapterButton(chapterNumber: 4, isUnlocked: false) // Chapter 4 is initially locked
//                    }
//                    .padding()
//
//                    NavigationLink(destination: ChapterView(chapterNumber: 5), isActive: .constant(false)) {
//                        ChapterButton(chapterNumber: 5, isUnlocked: false) // Chapter 5 is initially locked
//                    }
//                    .padding()
//                }
//            
//            .navigationTitle("Cinderella Story")
//        }
//    }
//}
//
//struct ChapterButton: View {
//    let chapterNumber: Int
//    let isUnlocked: Bool
//
//    var body: some View {
//        Button(action: {
//            // Handle button tap
//        }) {
//            Text("Chapter \(chapterNumber)")
//                .padding()
//                .foregroundColor(isUnlocked ? .blue : .gray)
//                .overlay(
//                    RoundedRectangle(cornerRadius: 10)
//                        .stroke(isUnlocked ? Color.blue : Color.gray, lineWidth: 2)
//                )
//        }
//        .disabled(!isUnlocked)
//    }
//}
//
//struct ChapterView: View {
//    let chapterNumber: Int
//
//    var body: some View {
//        Text("Chapter \(chapterNumber) Content Goes Here")
//            .padding()
//            .navigationTitle("Chapter \(chapterNumber)")
//    }
//    
//}
//
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//          
//    }
//}
