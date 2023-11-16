//
//  Chapter1View.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/16/23.
//

import SwiftUI

struct Chapter1View: View {
    @EnvironmentObject var chapterUnlocker: ChapterUnlocker
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color(.C_1_P_1)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Image(.cinderella1)
                        .resizable()
                        .frame(width: 225, height: 380)
                    ScrollView {
                        Section {
                            Text("Once upon a time - not yours or mine, there was a beautiful young woman named Cinderella. She was a French woman born into nobility and wealth, with looks certainly to match. She had long, radiant blonde hair, full, lush lips, and shimmering blue eyes. She was someone who was universally loved, for both her beauty and her kindness.")
                                .font(.custom("Chalkduster", size: 32))
                                .padding()
                                .foregroundColor(.white)
                            
                        }
                        Spacer()
                        Section {
                            HStack {
                                Spacer()
                                
                                
//                                NavigationLink(destination: MainView(), label: {
//                                    Text("Chapter Select")
//                                        .frame(width: 100, height: 50)
//                                        .background(Color.red)
//                                        .foregroundColor(.white)
//                                        .cornerRadius(25.0)
//                                        .navigationBarBackButtonHidden(true)
//                                })
//                                .padding()
//                                Spacer()
                                
                                NavigationLink(destination: Chapter1View2(), label: {
                                    Text("Next")
                                        .frame(width: 100, height: 50)
                                        .background(Color.red)
                                        .foregroundColor(.white)
                                        .cornerRadius(25.0)
                                        .navigationBarBackButtonHidden(true)
                                })
                                .padding(.horizontal)
                                Spacer()
                            }
                            
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .background(Color("C1P1"))
                }
                
            }
            
            
        }
        
    }
    
}


#Preview {
    Chapter1View()
        .environmentObject(ChapterUnlocker())
}
