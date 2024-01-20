//
//  ContentView.swift
//  Restart
//
//  Created by Nicolas Estigarribia on 20/01/2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnBoardingViewActive {
                OnBoardingView()
            } else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
