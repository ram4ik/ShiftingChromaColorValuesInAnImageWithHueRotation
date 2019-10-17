//
//  ContentView.swift
//  ShiftingChromaColorValuesInAnImageWithHueRotation
//
//  Created by ramil on 17.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var animateGradient = false
    @State var shiftColors = false
    var body: some View {
        
        Image(systemName: "umbrella")
            .font(.largeTitle)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            //.background(Color(red: 0, green: 0.0, blue: 1, opacity: 0.5))
            .background(LinearGradient(gradient: Gradient(colors: [.purple, .green, .blue, .gray, .orange, .pink, .purple]), startPoint: animateGradient ? .top : .topTrailing, endPoint: animateGradient ? .bottom : .topLeading).opacity(0.6))
            .hueRotation(.degrees(shiftColors ? 0 : 360))
            .animation(Animation.linear(duration: 10).repeatForever(autoreverses: true).speed(1.5))
            .onAppear() {
                self.animateGradient.toggle()
                self.shiftColors.toggle()
            
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
