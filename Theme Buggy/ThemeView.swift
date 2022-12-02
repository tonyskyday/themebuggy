//
//  ContentView.swift
//  Theme Buggy
//
//  Created by Tony Scida on 12/2/22.
//

import SwiftUI

struct ThemeView: View {
    @AppStorage("theme") var theme: String = "The Year of Me"
    
    var body: some View {
        VStack {
            Text("\(theme)")
        }
        .padding()
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView()
    }
}
