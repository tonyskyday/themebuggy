//
//  ContentView.swift
//  Theme Buggy
//
//  Created by Tony Scida on 12/2/22.
//

import SwiftUI

struct ThemeView: View {
    @State var showSettings: Bool = false
    @State var edit: Bool = false
    @AppStorage("theme") var theme: String = ""

    var body: some View {
        VStack {
            VStack {
                if edit {
                    HStack {
                        TextField("Theme", text: $theme ).font(.largeTitle).minimumScaleFactor(0.5).multilineTextAlignment(.center)
                        Button {
                            self.edit.toggle()
                        } label: {
                            Text("Done")
                        }.keyboardShortcut(.defaultAction)
                    }
                } else {
                    ZStack {
                        if theme.isEmpty {
                            Text("Set a theme").font(.largeTitle).minimumScaleFactor(0.5)
                        } else {
                            Text(theme).font(.largeTitle).minimumScaleFactor(0.5)
                        }
                    }
                    .onTapGesture {
                            self.edit.toggle()
                        }
                }
            }.padding()
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
                .padding(.top)
        }
        .padding()
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView()
    }
}
