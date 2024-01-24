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
            // MARK: - HEADER
            Spacer()
            Image("character-2")
                .resizable()
                .scaledToFit()
                .padding()
            Spacer()
            // MARK: - BODY
            Text("El tiempo que lleva a la maestría depende de la intensidad de nuestro enfoque.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            
            // MARK: - FOOTER

            Button(action: {
                isOnBoardingViewActive = true
            }, label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                    .foregroundStyle(.primary)
                
                Text("Reiniciar")
                    .font(.title3)
                    .fontWeight(.bold)
                
            })
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            //Diseno del boton
            
        }
    }
}

#Preview {
    HomeView()
}
