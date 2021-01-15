//
//  ContentView.swift
//  HamburgerMenu
//
//  Created by Joep Hinderink on 15/01/2021.
//

import SwiftUI

class expand: ObservableObject {
    @Published var isExpanded = false
    @Published var showSchedule = true
    @Published var showSettings = false
}

struct ContentView: View {
    
    @EnvironmentObject var expand : expand
    
    var body: some View {
        ZStack {
            Button (action: {
                withAnimation {
                expand.isExpanded.toggle()
                }
            }, label: {
                Text("Expand")
        })
//            .blur(radius: expand.isExpanded ? 4 : 0)
            if expand.isExpanded {
            HamburgerMenu()
                .transition(.move(edge: .leading))
                .offset(x: -UIScreen.main.bounds.width / 2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(expand())
    }
}
