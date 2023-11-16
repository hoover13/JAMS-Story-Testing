//
//  Chapter1View5.swift
//  SwiftUIStoryTemplate
//
//  Created by Dashawn Morrow on 11/14/23.
//

import SwiftUI

struct Chapter1View5: View {
    var body: some View {
        
                NavigationStack {
                    ZStack {
                        Color(.C_1_P_5)
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        VStack {
                            Image(.aisle)
                                .resizable()
                                .frame(width: 302, height: 343)
                    ScrollView {
                        Section {
                            Text("A few days after, there is the ringing of silver bells, the smell of white roses, and a beautiful soon-to-be princess walking down the aisle, the sight of her future husband smiling ear to ear at the opposite end of the aisle. She finds herself standing in front of the prince, thinking of how happy she is to be chosen to be his princess. ")
                                .font(.custom("Chalkduster", size: 32))
                                .padding(25)
                                
                        }
                        Spacer()
                        Section {
                            HStack {
                                Spacer()
                                NavigationLink(destination: Chapter1View4(), label: {
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

                                NavigationLink(destination: Chapter1View6(), label: {
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
    Chapter1View5()
}
