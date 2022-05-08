//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var dashboard: Dashboard = .init()
    @StateObject private var overview: Overview = .init()
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                VStack {
                    VStack(alignment: .leading, spacing: 24) {
                        HeaderView()
                        Divider()
                            .background(Color("BodyColor"))
                        ThemeSwitcherView()
                        ForEach(dashboard.items) { item in
                            DashboardItemView(item: item)
                        }
                    }
                    VStack(alignment: .leading, spacing: 16) {
                        OverviewHeaderView()
                        ForEach(overview.items) { item in
                            OverviewItemView(item: item)
                        }
                    }
                    .padding(.vertical, 24)
                }
                .padding(24)
            }
        }
        .environmentObject(dashboard)
        .environmentObject(overview)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
