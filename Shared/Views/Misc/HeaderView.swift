//
//  HeaderView.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Social Media Dashboard")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("TitleColor"))
            Text("Total Followers: 23,004")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(Color("BodyColor"))
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
