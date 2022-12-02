//
//  ThemeSettingsView.swift
//  Theme Buggy
//
//  Created by Tony Scida on 12/2/22.
//

import SwiftUI

struct ThemeSettingsView: View {
    @AppStorage("theme") var theme: String = ""
    @Binding var showingSheet: Bool
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Spacer()
            Text("Enter your theme.").font(.title)
            HStack {
                Spacer()
                TextField("Theme", text: $theme)
                Button(action: {
                    $showingSheet.wrappedValue = false
                }) {
                    Text("Done")
                }.keyboardShortcut(.defaultAction)
            }
            .padding()
            Spacer()
        }
        .padding()
    }
}

struct ThemeSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeSettingsView(showingSheet: .constant(false))
    }
}
