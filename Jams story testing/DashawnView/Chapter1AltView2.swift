//
//  Chapter1AltView2.swift
//  SwiftUIStoryTemplate
//
//  Created by Dashawn Morrow on 11/16/23.
//

import SwiftUI

struct Chapter1AltView2: View {
    var body: some View {
        
        
        NavigationStack {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Image(.chad)
                        .resizable()
                        .frame(width: 320, height: 320)
            ScrollView {
                Section {
                    Text("The Prince responds with, \"Wait... til death? Noooooo thank you!\" He then runs off into the sunset as a lucky bachelor that avoided the worst thing of all: being tied down to one woman forever.")
                        .font(.custom("Chalkduster", size: 32))
                        .padding()
                        .foregroundColor(.white)
                    
                    
                        
                }
                Section {
                    Text("........The End?")
                        .font(.custom("Chalkduster", size: 32))
                        .padding()
                        .foregroundColor(.white)
                }
                Spacer()
                Section {
                    HStack {
                        Spacer()

                        NavigationLink(destination: Chapter1View6(), label: {
                            Text("Back")
                                .frame(width: 100, height: 50)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(25.0)
                                .navigationBarBackButtonHidden(true)
                        })
                        .padding()
                        Spacer()

                        NavigationLink(destination: SplashScreenView(), label: {
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
            .background(Color.black)
        }
        
    }
    
    
}

}
}

#Preview {
    Chapter1AltView2()
}
