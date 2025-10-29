//
//  ContentView.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background color
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                // App title
                Text("🍴 HostelBite")
                    .font(.system(size: 50, design: .serif))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                // App description
                Text("Organize weekly meals with your roommates")
                    .font(.system(size: 20, weight: .light, design: .default))
                    .font(.subheadline .monospaced())
                    .foregroundColor(.white.opacity(0.9))
                    .multilineTextAlignment(.center)
                    .padding(.top, 5)
                    .padding(.horizontal)
                
                Spacer()
                
                // Developers' names
                Text("Developed by: Sithum Raigamage, Namith ,Sanuth")
                    .font(.footnote)
                    .foregroundColor(.white.opacity(0.8))
                    .padding(.bottom, 20)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
