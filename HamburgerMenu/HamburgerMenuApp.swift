//
//  HamburgerMenuApp.swift
//  HamburgerMenu
//
//  Created by Joep Hinderink on 15/01/2021.
//

import SwiftUI

@main
struct HamburgerMenuApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(expand())
        }
    }
}
