//
//  Overview.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/08.
//

import SwiftUI

// MARK: ValueType enum.

enum ValueType: String, CaseIterable {
    case pageViews = "Page Views"
    case likes = "Likes"
    case profileViews = "Profile Views"
    case retweets = "Retweets"
    case totalViews = "Total Views"
}

// MARK: OverviewItem struct.

typealias ValueSet = [ValueType: (previous: Int, current: Int)]

struct OverviewItem: Identifiable {
    let id: UUID = .init()
    let socialMediaType: SocialMediaType
    let data: ValueSet
}

extension OverviewItem: Hashable {
    static func == (lhs: OverviewItem, rhs: OverviewItem) -> Bool {
        lhs.id == rhs.id
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

// MARK: Overview class.

class Overview: ObservableObject {
    @Published var items: [OverviewItem] = [
        .init(socialMediaType: .facebook, data: [
            .pageViews: (previous: 3, current: 87),
            .likes: (previous: -2, current: 52)
        ]),
        .init(socialMediaType: .instagram, data: [
            .likes: (previous: 2257, current: 5462),
            .profileViews: (previous: 1375, current: 52000)
        ]),
        .init(socialMediaType: .twitter, data: [
            .retweets: (previous: 303, current: 117),
            .likes: (previous: 553, current: 507)
        ]),
        .init(socialMediaType: .youtube, data: [
            .likes: (previous: -19, current: 107),
            .totalViews: (previous: -12, current: 1407)
        ])
    ]
}
