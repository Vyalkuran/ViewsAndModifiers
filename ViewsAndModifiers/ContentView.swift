//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by sebastian.popa on 8/1/23.
//

import SwiftUI

struct ProeminentTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View{
    func proeminentTitle() -> some View{
        modifier(ProeminentTitleModifier())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello World!")
            .proeminentTitle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
