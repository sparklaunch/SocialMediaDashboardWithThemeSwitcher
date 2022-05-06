//
//  Dashboard.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

// MARK: SocialMedia struct.

struct SocialMedia: Identifiable {
    let id: UUID = .init()
    let name: String
    let logo: Image
    let followerTerm: FollowerTerm
    var color: Color?
    var linearGradient: LinearGradient?
    var hasColor: Bool {
        color != nil
    }
    static func from(_ socialMediaType: SocialMediaType) -> Self {
        return socialMediaMapper[socialMediaType]!
    }
    static let socialMediaMapper: [SocialMediaType: SocialMedia] = [
        .facebook: .init(name: "Facebook", logo: .init("Facebook"), followerTerm: .followers, color: .init("FacebookColor")),
        .twitter: .init(name: "Twitter", logo: .init("Twitter"), followerTerm: .followers, color: .init("TwitterColor")),
        .instagram: .init(name: "Instagram", logo: .init("Instagram"), followerTerm: .followers, linearGradient: .init(colors: [.init("InstagramLeadingColor"), .init("InstagramTrailingColor")], startPoint: .leading, endPoint: .trailing)),
        .youtube: .init(name: "Youtube", logo: .init("Youtube"), followerTerm: .subscribers, color: .init("YoutubeColor"))
    ]
}

extension SocialMedia: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension SocialMedia: Equatable {
    static func == (lhs: SocialMedia, rhs: SocialMedia) -> Bool {
        lhs.id == rhs.id
    }
}

// MARK: DashboardItem struct.

struct DashboardItem: Identifiable {
    let id: UUID = .init()
    let accountName: String
    let socialMedia: SocialMedia
    let numberOfFollowers: Int
    let comparedToPrevious: Int
    var numberOfFollowersString: String {
        if numberOfFollowers >= 10000 {
            return String(String(numberOfFollowers).prefix(2)) + "k"
        }
        else {
            return String(numberOfFollowers)
        }
    }
    init(accountName: String, socialMedia: SocialMediaType, numberOfFollowers: Int, comparedToPrevious: Int) {
        self.accountName = accountName
        self.socialMedia = SocialMedia.from(socialMedia)
        self.numberOfFollowers = numberOfFollowers
        self.comparedToPrevious = comparedToPrevious
    }
}

extension DashboardItem {
    init() {
        self.accountName = "@nathanf"
        self.socialMedia = SocialMedia.from(.facebook)
        self.numberOfFollowers = 1987
        self.comparedToPrevious = 12
    }
}

extension DashboardItem: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension DashboardItem: Equatable {
    static func == (lhs: DashboardItem, rhs: DashboardItem) -> Bool {
        lhs.id == rhs.id
    }
}

// MARK: Required enums.

enum SocialMediaType: String, CaseIterable {
    case facebook
    case twitter
    case instagram
    case youtube
}

enum FollowerTerm: String, CaseIterable {
    case followers
    case subscribers
}

// MARK: Dashboard class.

class Dashboard: ObservableObject {
    @Published var items: [DashboardItem] = [
        .init(accountName: "@nathanf", socialMedia: .facebook, numberOfFollowers: 1987, comparedToPrevious: 12),
        .init(accountName: "@nathanf", socialMedia: .twitter, numberOfFollowers: 1044, comparedToPrevious: 99),
        .init(accountName: "@realnathanf", socialMedia: .instagram, numberOfFollowers: 11000, comparedToPrevious: 1099),
        .init(accountName: "Nathan F.", socialMedia: .youtube, numberOfFollowers: 8239, comparedToPrevious: -144)
    ]
}
