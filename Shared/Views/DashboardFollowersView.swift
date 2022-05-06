//
//  DashboardFollowersView.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

struct DashboardFollowersView: View {
    let title: String
    let unit: String
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 72))
                .fontWeight(.bold)
            .foregroundColor(Color("TitleColor"))
            Text(unit.uppercased())
                .kerning(3)
                .foregroundColor(Color("BodyColor"))
        }
    }
}

struct DashboardFollowersView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardFollowersView(title: "1987", unit: "Followers")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
