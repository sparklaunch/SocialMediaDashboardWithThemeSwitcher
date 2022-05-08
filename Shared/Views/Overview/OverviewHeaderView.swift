//
//  OverviewHeaderView.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/08.
//

import SwiftUI

struct OverviewHeaderView: View {
    var body: some View {
        Text("Overview - Today")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color("BodyColor"))
    }
}

struct OverviewHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewHeaderView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
