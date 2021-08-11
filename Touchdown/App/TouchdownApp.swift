//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Thiago on 30/07/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
