//
//  AnimatingCircle.swift
//  JustAnimate
//
//  Created by KANISHK VIJAYWARGIYA on 20/07/21.
//

import SwiftUI

struct AnimatingCircle: View {
    @State private var scaleInOut = false;
    @State private var rotateInOut = false;
    @State private var moveInOut = false;
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            ZStack {
                
                // Circle set 1
                ZStack {
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                }.opacity(0.5)
                
                // Circle set 2
                ZStack {
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                }
                .opacity(0.5)
                .rotationEffect(.degrees(60))
                
                // Circle set 3
                ZStack {
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                }
                .opacity(0.5)
                .rotationEffect(.degrees(120))
                
            }
            .rotationEffect(.degrees(rotateInOut ? 90 : 0))
            .scaleEffect(scaleInOut ? 1 : 1/4)
            .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(1/8))
            .onAppear {
                moveInOut.toggle()
                scaleInOut.toggle()
                rotateInOut.toggle()
            }
        }
    }
}

struct AnimatingCircle_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingCircle()
    }
}
