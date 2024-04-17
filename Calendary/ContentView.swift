//
//  ContentView.swift
//  Calendary
//
//  Created by Krystof Hugo Maly on 17.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = false
    @State private var degree:Int = 270
    @State private var spinnerLength = 0.6

    var body: some View {
        ZStack {
            if self.isActive {
                DefaultView()
            } else {
                VStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 100, height: 100)
                        .background(
                            Image(systemName: "calendar")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .foregroundColor(.white)
                                .clipped()
                        )
                        .padding(40)
                    Circle()
                        .trim(from: 0.0,to: spinnerLength)
                        .stroke(LinearGradient(colors: [.purple,.purple], startPoint: .topLeading, endPoint: .bottomTrailing),style: StrokeStyle(lineWidth: 8.0,lineCap: .round,lineJoin:.round))
                        .animation(Animation.easeIn(duration: 1.5).repeatForever(autoreverses: true))
                        .frame(width: 60,height: 60)
                        .rotationEffect(Angle(degrees: Double(degree)))
                        .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                        .onAppear{
                        degree = 270 + 360
                            spinnerLength = 0
                    }
                }
            }
        }
            .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
