//
//  DashboardHeaderView.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

struct DashboardHeaderView: View {
    let logo: Image
    let accountName: String
    var body: some View {
        HStack {
            logo
                .resizable()
                .scaledToFit()
            Text(accountName)
                .fontWeight(.semibold)
                .foregroundColor(Color("BodyColor"))
        }
        .frame(height: 30)
    }
}

struct DashboardHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardHeaderView(logo: .init("Facebook"), accountName: "@nathanf")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
