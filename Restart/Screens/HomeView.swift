//
//  HomeView.swift
//  Restart
//
//  Created by Nicolas Estigarribia on 20/01/2024.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = false

    var body: some View {
        VStack (spacing: 20) {
            Text("Home View")
                .font(.title)
            
            Button {
                isOnBoardingViewActive = true
            } label: {
                Text("Restart")
            }

        }
    }
}

#Preview {
    HomeView()
}
