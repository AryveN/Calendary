//
//  ContentView.swift
//  Calendary
//
//  Created by Krystof Hugo Maly on 17.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = false
    var body: some View {
        ZStack {
            if self.isActive {
                DefaultView()
            } else {
                VStack {
                    Icon()
                        .padding(40)
                    Spinner()
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
