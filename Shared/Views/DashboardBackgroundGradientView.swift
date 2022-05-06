//
//  DashboardBackgroundGradientView.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

struct DashboardBackgroundGradientView: View {
    let gradient: LinearGradient
    var body: some View {
        ZStack(alignment: .top) {
            Color("CardColor")
            gradient
                .frame(height: 10)
        }
        .cornerRadius(15)
    }
}

struct DashboardBackgroundGradientView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardBackgroundGradientView(gradient: .init(colors: [.init("InstagramLeadingColor"), .init("InstagramTrailingColor")], startPoint: .leading, endPoint: .trailing))
            .previewLayout(.sizeThatFits)
    }
}
