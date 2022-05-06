//
//  DashboardBackgroundColor.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

struct DashboardBackgroundColorView: View {
    let color: Color
    var body: some View {
        ZStack(alignment: .top) {
            Color("CardColor")
            color
                .frame(height: 10)
        }
        .cornerRadius(15)
    }
}

struct DashboardBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardBackgroundColorView(color: .init("FacebookColor"))
            .previewLayout(.sizeThatFits)
    }
}
