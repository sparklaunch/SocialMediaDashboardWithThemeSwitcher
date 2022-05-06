//
//  DashboardComparisonView.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

struct DashboardComparisonView: View {
    let value: Int
    var body: some View {
        HStack {
            Image(decorative: value >= 0 ? "Up" : "Down")
                .resizable()
                .frame(width: 8, height: 4)
            Text("\(abs(value)) Today")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(value >= 0 ? Color("PositiveColor") : Color("NegativeColor"))
        }
    }
}

struct DashboardComparisonView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardComparisonView(value: 12)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
