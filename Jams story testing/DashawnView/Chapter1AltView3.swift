//
//  Chapter1AltView3.swift
//  SwiftUIStoryTemplate
//
//  Created by Dashawn Morrow on 11/16/23.
//

import SwiftUI

struct Chapter1AltView3: View {
    var body: some View {
        
        
        NavigationStack {
            ZStack {
                Color.white
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Image(.sheChad)
                        .resizable()
                        .frame(width: 320, height: 320)
            ScrollView {
                Section {
                    Text("She then follows up with, \"Nope. Nah. Noooooo sir. This is dumb. You're dumb. I'm dumb for even aggreeing to this. Weddings are dumb. I'm outta here!\" ")
                        .font(.custom("Chalkduster", size: 32))
                        .padding()
                        .foregroundColor(.black)
                    
                    
                        
                }
                Section {
                    Text("........The End?")
                        .font(.custom("Chalkduster", size: 32))
                        .padding()
                        .foregroundColor(.black)
                }
                Spacer()
                Section {
                    HStack {
                        Spacer()

                        NavigationLink(destination: Chapter1View7(), label: {
                            Text("Back")
                                .frame(width: 100, height: 50)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(25.0)
                                .navigationBarBackButtonHidden(true)
                        })
                        .padding()
                        Spacer()

                        NavigationLink(destination: TestingView(), label: {
                            Text("Chapter Select")
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
            .background(Color.white)
        }
        
    }
    
    
}

}
}

#Preview {
    Chapter1AltView3()
}
