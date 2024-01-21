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
            
            // MARK: - FOOTER
            
            Spacer()
        }
    }
}

#Preview {
    OnBoardingView()
}
