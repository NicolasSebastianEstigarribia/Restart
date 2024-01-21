//
//  OnBoardingView.swift
//  Restart
//
//  Created by Nicolas Estigarribia on 20/01/2024.
//

import SwiftUI

struct OnBoardingView: View {
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true

    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all)
            
            VStack {
                // MARK: - HEADER
                Spacer()
                VStack {
                    Text("Compartir")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                    Text("""
                    No es cuánto damos, pero
                    cuánto amor ponemos en dar.
                    """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                }
                
                // MARK: - CENTER
                Spacer()
                ZStack {
                    ZStack {
                        Circle()
                            .stroke(
                                .white.opacity(0.2),
                                style:
                                    .init(lineWidth: 40)
                            )
                            .frame(width: 260,height: 260, alignment: .center)
                        Circle()
                            .stroke(
                                .white.opacity(0.2),
                                style:
                                    .init(lineWidth: 80)
                            )
                            .frame(width: 260,height: 260, alignment: .center)
                    }
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                
                // MARK: - FOOTER
                Text("hi")
                Spacer()
                
            }
            
        }
    }
}

#Preview {
    OnBoardingView()
}
