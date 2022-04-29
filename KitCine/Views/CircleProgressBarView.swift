//
//  CircleProgressBarView.swift
//  KitCine
//
//  Created by Dylan Caetano on 26/04/2022.
//

import SwiftUI

struct CircleProgressBarView: View {
    
    let progress: Float
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 25, height: 25)
                .foregroundColor(.white.opacity(0.8))
            Circle()
                .stroke(Color.white.opacity(0.2), lineWidth: 2.0) // lepeseur du cercle
                .frame(width: 35, height: 35)
            Circle()
                .trim(from: 0.0, to: CGFloat(min(progress / 10, 1.0))) // limiter a une valeur de 1 maximome
                .stroke(AngularGradient(gradient: Gradient( // Gradrient de couleur
                colors: [
                    Color.blue,
                    Color.blue,
                    Color.red,
                    Color.red,
                    Color.red,
                    Color.blue
                ]), center: .center), style: StrokeStyle(
                    lineWidth: 2.0,
                    lineCap: .round,
                    lineJoin: .round
                ))
                .frame(width: 35, height: 35)
                .rotationEffect(Angle(degrees: 270)) // Rotation du cercle
            Text(String(format: "%.1f", progress)) // Le constructeur String pour formatée et puis mettre la valeur progress
                .font(.system(size: 12))
                .fontWeight(.semibold)
                .foregroundColor(.black)
        }
    }
}

struct CircleProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleProgressBarView(progress: 8.1)
            CircleProgressBarView(progress: 6)
            CircleProgressBarView(progress: 3)
        }
        .frame(width: 35, height: 35)
        .padding()
        .background(Color.accentColor)
        .previewLayout(.sizeThatFits)
    }
}
