//
//  Chapter1View2.swift
//  SwiftUIStoryTemplate
//
//  Created by Dashawn Morrow on 11/13/23.
//

import SwiftUI

struct Chapter1View2: View {
    var body: some View {
        
                NavigationStack {
                    ZStack {
                        Color("C1P2")
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        VStack {
                            Image("Prince")
                                .resizable()
                                .frame(width: 225, height: 380)
                    ScrollView {
                        Section {
                            Text("This combination of good looks and a compassionate heart caught the eye of the great Prince Charles, prince of France. This tall, handsome, and regal young man was so bewitched by Cinderella, that he would eventually ask her hand in marriage. ")
                                .font(.custom("Chalkduster", size: 32))
                                .padding(25)
                                .foregroundColor(.white)
                                
                        }
                        Spacer()
                        Section {
                            HStack {
                                Spacer()
                                NavigationLink(destination:  Chapter1View(), label: {
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

                                NavigationLink(destination: Chapter1View3(), label: {
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
                    .background(Color("C1P2"))
                }
                
            }
            
            
        }
    }
}

#Preview {
    Chapter1View2()
}
