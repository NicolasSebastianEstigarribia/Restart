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
        VStack (spacing: 20) {
            Text("OnBoarding")
                .font(.title)
            
            Button {
                isOnBoardingViewActive = false
            } label: {
                Text("Start")
            }

        }
    }
}

#Preview {
    OnBoardingView()
}
