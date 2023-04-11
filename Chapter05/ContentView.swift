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
            ZStack{
                Text("HALLO")
                    .padding(64)
                    .background(Capsule()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.mint,.pink]),
                                           startPoint: .top,
                                           endPoint: .trailing)))
            }
            .shadow(color: .mint, radius: 40, x:-5, y:-15)
            .overlay(Capsule().stroke(Color.indigo, lineWidth: 5))
            
            //I created this image for a project
            Image("HewittEstates&Antiques-02")
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .mask(LinearGradient(gradient: Gradient(colors: [.black, .black, .black, .clear]), startPoint: .bottom, endPoint: .top))
                .opacity(0.70)
            Capsule()
                .fill(LinearGradient(gradient: Gradient(colors: [.blue, .green, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
            Rectangle()
                .fill(AngularGradient(gradient: Gradient(colors: [.green, .blue, .black, .red, .yellow, .gray]), center: .center))
            Rectangle()
                .fill(AngularGradient(gradient: Gradient(colors: [.green, .blue, .black, .red, .yellow, .gray]), center: .top))
            Rectangle()
                .fill(AngularGradient(gradient: Gradient(colors: [.green, .blue, .black, .red, .yellow, .gray]), center: .bottom))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
