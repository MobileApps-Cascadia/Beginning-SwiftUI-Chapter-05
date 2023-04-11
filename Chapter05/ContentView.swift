//
//  ContentView.swift
//  Chapter05
//
//  Created by Mike Panitz on 4/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Capsule()
                .fill(LinearGradient(gradient: Gradient(colors: [.blue, .green, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
            Rectangle()
                .fill(AngularGradient(gradient: Gradient(colors: [.green, .blue, .black, .red, .yellow, .gray]), center: .center))
            Rectangle()
                .fill(AngularGradient(gradient: Gradient(colors: [.green, .blue, .black, .red, .yellow, .gray]), center: .top))
            Rectangle()
                .fill(AngularGradient(gradient: Gradient(colors: [.green, .blue, .black, .red, .yellow, .gray]), center: .bottom))
            
            ZStack{
                Ellipse()
                    .fill(RadialGradient(gradient: Gradient(colors: [.red,.teal]),center: .trailing,startRadius: 300,endRadius: 100))
                Text("Whats up with SwiftUI am I right?")
                    
            }
            HStack{
                Image("bearsmall")
                    .resizable()
                    .frame(width:200, height: 210)
                    .aspectRatio( contentMode: .fill)
                    .clipShape(Circle())
                    .shadow(color: .teal, radius: 46, x: 90, y: -30)
                    .overlay(Circle().stroke(Color.brown, lineWidth: 10))
                    .opacity(0.5)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
