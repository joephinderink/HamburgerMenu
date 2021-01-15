//
//  HamburgerMenu.swift
//  HamburgerMenu
//
//  Created by Joep Hinderink on 15/01/2021.
//

import SwiftUI

struct HamburgerMenu: View {
    
    @EnvironmentObject var expand : expand
    
    var body: some View {
        HStack {
            VStack (alignment: .trailing) {
                Button (action: {
                    expand.showSettings = true
                    expand.showSchedule = false
                }, label: {
                    HStack {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
                    .foregroundColor(.black)
                    .padding()
                    .padding(.top, 50)
                })
                Spacer()
            }
            .padding(.vertical, 50)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height + 20, alignment: .trailing)
            .background(Color.gray)
        }
    }
}

struct HamburgerMenu_Previews: PreviewProvider {
    static var previews: some View {
        HamburgerMenu()
            .environmentObject(expand())
    }
}
