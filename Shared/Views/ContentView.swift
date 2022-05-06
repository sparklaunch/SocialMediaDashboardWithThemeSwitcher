//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var dashboard: Dashboard = .init()
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    HeaderView()
                    Divider()
                        .background(Color("BodyColor"))
                    ThemeSwitcherView()
                    ForEach(dashboard.items) { item in
                        DashboardItemView(item: item)
                    }
                }
                .padding(24)
            }
        }
        .environmentObject(dashboard)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
