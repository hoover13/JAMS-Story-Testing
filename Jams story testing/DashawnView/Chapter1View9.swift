//
//  Chapter1View9.swift
//  SwiftUIStoryTemplate
//
//  Created by Dashawn Morrow on 11/15/23.
//

import SwiftUI

struct Chapter1View9: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.C_1_P_9)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Image(.sheKissHim)
                        .resizable()
                        .frame(width: 302, height: 343)
            ScrollView {
                Section {
                    Text("They are then pronounced man and wife, and Cinderella leaps unto the prince and kisses him before the minister could even utter the words, “You may kiss the bride.")
                        .font(.custom("Chalkduster", size: 32))
                        .padding(25)
                        .foregroundColor(.black)
                        
                }
                Spacer()
                Section {
                    HStack {
                        Spacer()
                        NavigationLink(destination: Chapter1View8(), label: {
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

                        NavigationLink(destination: Chapter1View10(), label: {
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
            .background(Color(.C_1_P_9))
        }
        
    }
    
    
}
    }
}

#Preview {
    Chapter1View9()
}
