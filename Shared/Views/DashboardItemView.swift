//
//  DashboardItemView.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

struct DashboardItemView: View {
    let item: DashboardItem
    var body: some View {
        ZStack {
            if item.socialMedia.hasColor {
                DashboardBackgroundColorView(color: item.socialMedia.color!)
            } else {
                DashboardBackgroundGradientView(gradient: item.socialMedia.linearGradient!)
            }
            VStack(spacing: 24) {
                VStack {
                    DashboardHeaderView(logo: item.socialMedia.logo, accountName: item.accountName)
                    DashboardFollowersView(title: item.numberOfFollowersString, unit: item.socialMedia.followerTerm.rawValue)
                }
                DashboardComparisonView(value: item.comparedToPrevious)
            }
            .padding(36)
        }
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct DashboardItemView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardItemView(item: .init())
            .previewLayout(.sizeThatFits)
    }
}
