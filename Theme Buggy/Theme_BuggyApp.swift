//
//  Theme_BuggyApp.swift
//  Theme Buggy
//
//  Created by Tony Scida on 12/2/22.
//

import SwiftUI

@main
struct Theme_BuggyApp: App {
    var body: some Scene {
        MenuBarExtra("Menu Bar item", systemImage: "circle.fill") {
            ThemeView()
        }.menuBarExtraStyle(.window)
    }
}
