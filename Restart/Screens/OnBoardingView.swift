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
                    CircleGroupView(ShapeColor: Color.white, ShapeOpacity: 0.2)
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                
                // MARK: - FOOTER
                ZStack {
                  // PARTS OF THE CUSTOM BUTTON
                  
                  // 1. BACKGROUND (STATIC)
                  
                  Capsule()
                    .fill(Color.white.opacity(0.2))
                  
                  Capsule()
                    .fill(Color.white.opacity(0.2))
                    .padding(8)
                  
                  // 2. CALL-TO-ACTION (STATIC)
                  
                  Text("Empezar")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .offset(x:20)
                  
                  // 3. CAPSULE (DYNAMIC WIDTH)
                  
                  HStack {
                    Capsule()
                      .fill(Color("ColorRed"))
                      .frame(width: 80)
                    
                    Spacer()
                  }
                  
                  // 4. CIRCLE (DRAGGABLE)
                  
                  HStack {
                    ZStack {
                      Circle()
                        .fill(Color("ColorRed"))
                      Circle()
                        .fill(.black.opacity(0.15))
                        .padding(8)
                      Image(systemName: "chevron.right.2")
                        .font(.system(size: 24, weight: .bold))
                    }
                    .foregroundColor(.white)
                    .frame(width: 80, height: 80, alignment: .center)
                    .onTapGesture {
                        isOnBoardingViewActive = false
                    }
                  
             
                    
                    Spacer()
                  } //: HSTACK
                } //: FOOTER
                .frame(height: 80)
                .padding()
                
                Spacer()
                
            }
            
        }
    }
}

#Preview {
    OnBoardingView()
}
