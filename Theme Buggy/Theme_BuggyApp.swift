//
//  Theme_BuggyApp.swift
//  Theme Buggy
//
//  Created by Tony Scida on 12/2/22.
//

import SwiftUI

@main
struct Theme_BuggyApp: App {
    @AppStorage("theme") var theme: String = ""

    var body: some Scene {
        MenuBarExtra{
            ThemeView()
        } label: {
            if theme.isEmpty {
                Text("Set a theme")
            } else {
                Text(theme)
            }
        }.menuBarExtraStyle(.window)
    }
}
