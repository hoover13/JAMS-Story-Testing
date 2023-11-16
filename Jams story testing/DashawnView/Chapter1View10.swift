//
//  Chapter1View10.swift
//  SwiftUIStoryTemplate
//
//  Created by Dashawn Morrow on 11/15/23.
//

import SwiftUI

struct Chapter1View10: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.C_1_P_10)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Image(.toTheTheatre)
                        .resizable()
                        .frame(width: 343, height: 343)
            ScrollView {
                Section {
                    Text("The guests cheer, turtle doves fill the sky, and the prince shouts, “This calls for a celebration! To the Theatre!”")
                        .font(.custom("Chalkduster", size: 32))
                        .padding(25)
                        .foregroundColor(.black)
                        
                }
                Spacer()
                Section {
                    HStack {
                        Spacer()
                        NavigationLink(destination: Chapter1View9(), label: {
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
                        .padding()
                        Spacer()

                        NavigationLink(destination: Chapter2View(), label: {
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
            .background(Color(.C_1_P_10))
        }
        
    }
    
    
}
    }
}

#Preview {
    Chapter1View10()
}
