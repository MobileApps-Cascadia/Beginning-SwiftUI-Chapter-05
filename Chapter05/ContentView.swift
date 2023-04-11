//
//  ContentView.swift
//  Chapter05
//
//  Created by Mike Panitz on 4/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack{
                Capsule()
                                .fill(LinearGradient(gradient: Gradient(colors: [.blue, .green, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            Rectangle()
                                .fill(AngularGradient(gradient: Gradient(colors: [.green, .blue, .black, .red, .yellow, .gray]), center: .center))
                            Rectangle()
                                .fill(AngularGradient(gradient: Gradient(colors: [.green, .blue, .black, .red, .yellow, .gray]), center: .top))
                            Rectangle()
                                .fill(AngularGradient(gradient: Gradient(colors: [.green, .blue, .black, .red, .yellow, .gray]), center: .bottom))
            }
            
            
            
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [.purple, .blue]),
                        center: .center,
                        startRadius: 10,
                        endRadius: 400
                    )
                )
                .frame(width: 300, height: 200)
                .overlay(
                    Image("Image")
                    //Photo by Benjamin Voros on Unsplash https://unsplash.com/
                    
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 4)
                                .blur(radius: 4)
                                .offset(x: 2, y: 2)
                                .mask(Circle().fill(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color.black.opacity(0.7), location: 0.0),
                                        .init(color: Color.black.opacity(0), location: 0.5)
                                    ]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                )))
                        )
                        .shadow(color: .black, radius: 10, x: 0, y: 5)
                        .opacity(0.8)
                )
            Text("Mountain")
                .font(.title)
                .foregroundColor(.white)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
