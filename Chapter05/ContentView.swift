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
            Image("theroad")
                .resizable()
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
            Image("themountain")
                .resizable()
                .frame(width: 250, height: 250)
                .clipShape(Rectangle())
                
                
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
