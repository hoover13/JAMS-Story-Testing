//
//  Chapter1View8.swift
//  SwiftUIStoryTemplate
//
//  Created by Dashawn Morrow on 11/15/23.
//

import SwiftUI

struct Chapter1View8: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color(.C_1_P_5)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Image(.slipper)
                        .resizable()
                        .frame(width: 343, height: 343)
                        .padding(.top, 22)
            ScrollView {
                Section {
                    Text("The prince then grabs a pair of glass slippers with a radiant shimmer, and places them on her feet as the symbol of their engagement. The princess is dazzled by the brilliant shine of the slippers, and makes a personal vow to cherish them. ")
                        .font(.custom("Chalkduster", size: 32))
                        .padding(25)
                        
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
                        
                        NavigationLink(destination: SplashScreenView(), label: {
                            Text("Chapter Select")
                                .frame(width: 100, height: 50)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(25.0)
                                .navigationBarBackButtonHidden(true)
                        })
                        .padding()
                        Spacer()

                        NavigationLink(destination: Chapter1View9(), label: {
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
            .background(Color(.C_1_P_5))
        }
        
    }
    
    
}
}
}

#Preview {
    Chapter1View8()
}
