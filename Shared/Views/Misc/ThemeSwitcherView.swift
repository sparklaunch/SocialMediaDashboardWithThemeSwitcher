//
//  ThemeSwitcherView.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

struct ThemeSwitcherView: View {
    @State private var isDarkMode = false
    @EnvironmentObject private var globalState: GlobalState
    var body: some View {
        HStack {
            Text("Dark Mode")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(Color("BodyColor"))
            Spacer()
            Toggle(isOn: $isDarkMode) {
            }
            .onChange(of: isDarkMode) { isDarkMode in
                withAnimation(.default) {
                    globalState.colorScheme = isDarkMode ? .dark : .light
                }
            }
        }
    }
}

struct ThemeSwitcherView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeSwitcherView()
            .padding()
            .previewLayout(.sizeThatFits)
            .environmentObject(GlobalState())
    }
}
