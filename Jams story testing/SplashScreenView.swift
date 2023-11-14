//
//  SplashScreenView.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/13/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var rotationAngle: Double = 0.0
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            TestingView()
        } else {
            VStack {
                Image("shoe")
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.red)
                    .rotation3DEffect(
                        .degrees(rotationAngle),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
                    .scaleEffect(0.3)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(Animation.linear(duration: 3.0)) {
                            self.rotationAngle = 360.0
                            self.opacity = 1.0
                        }
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                            self.isActive = true
                        }
                    }
            }
        }
    }
}

//#Preview {
//    SplashScreenView()
//}

