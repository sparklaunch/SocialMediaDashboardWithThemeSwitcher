//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    HeaderView()
                    Divider()
                        .background(Color("BodyColor"))
                    ThemeSwitcherView()
                }
                .padding(24)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
