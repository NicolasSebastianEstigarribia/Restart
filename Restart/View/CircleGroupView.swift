//
//  CircleGroupView.swift
//  Restart
//
//  Created by Nicolas Estigarribia on 24/01/2024.
//

import SwiftUI

struct CircleGroupView: View {
    // Propiedades
    
    @State var ShapeColor: Color
    @State var ShapeOpacity : Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    ShapeColor.opacity(ShapeOpacity),
                    style:
                        .init(lineWidth: 40)
                )
                .frame(width: 260,height: 260, alignment: .center)
            Circle()
                .stroke(
                    ShapeColor.opacity(ShapeOpacity),
                    style:
                        .init(lineWidth: 80)
                )
                .frame(width: 260,height: 260, alignment: .center)
        }
    }
}

#Preview {
    ZStack {
        Color("ColorBlue")
            .ignoresSafeArea()
        CircleGroupView(ShapeColor: Color.white, ShapeOpacity: 0.2)
    }
}
