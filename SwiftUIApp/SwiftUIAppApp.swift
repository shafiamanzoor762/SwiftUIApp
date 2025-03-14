//
//  SwiftUIAppApp.swift
//  SwiftUIApp
//
//  Created by apple on 19/10/2024.
//

import SwiftUI

@main
struct SwiftUIAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Task.self)
    }
}
