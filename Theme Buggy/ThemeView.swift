//
//  ContentView.swift
//  Theme Buggy
//
//  Created by Tony Scida on 12/2/22.
//

import SwiftUI


struct ThemeView: View {
    @State var showSettings: Bool = false
    @AppStorage("theme") var theme: String = ""

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    self.showSettings = true
                } label: {
                    Image(systemName: "gear").foregroundColor(.primary)
                }
                .buttonStyle(.plain)
                .sheet(isPresented: $showSettings) {
                    ThemeSettingsView(showingSheet: $showSettings)
                }
            }
            .padding(.bottom)
            Text("\(theme)").font(.largeTitle).minimumScaleFactor(0.5)
                .padding()
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
