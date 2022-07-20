//
//  ContentView.swift
//  MyCard
//
//  Created by yaroslav on 17.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.10, green: 0.74, blue: 0.61).ignoresSafeArea()
            VStack() {
                Image("ava").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 150, height: 150).clipShape(Circle()).overlay(Circle().stroke(lineWidth: 5))
                Text("Yaroslav Lesko ")
                    .font(.title2)
                    .fontWeight(.heavy)
                Text("IOS Developer")
                    .font(.title3)
                    .fontWeight(.light)
                Divider()
                Card (image: "phone.fill", message: "+380680318196")
                Card (image: "envelope.fill", message: "yaroslav.llesko.98@gmail.com")
            }.foregroundColor(.white)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let message: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25).padding(.horizontal).frame(height: 50).overlay(HStack {
            Image(systemName: image)
            Text(message)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
        }.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/))
    }
}
