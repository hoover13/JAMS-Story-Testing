//
//  Chapter1AltView.swift
//  SwiftUIStoryTemplate
//
//  Created by Dashawn Morrow on 11/16/23.
//

import SwiftUI

struct Chapter1AltView: View {
    var body: some View {
        
        
        NavigationStack {
            ZStack {
                Color.orange
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Image(.sheSaysNo)
                        .resizable()
                        .frame(width: 225, height: 380)
            ScrollView {
                Section {
                    Text("\"Nu uh, boo boo. I'll only marry a man who I can go band for band with,\" responds Cinderella. The Prince lives on, foreever feeling salty, and Cinderella proceeds to move out of town, where she can thug with her rounds for the rest of her days.")
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

                        NavigationLink(destination: Chapter1View2(), label: {
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
            .background(Color.orange)
        }
        
    }
    
    
}

}
}

#Preview {
    Chapter1AltView()
}
