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
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
