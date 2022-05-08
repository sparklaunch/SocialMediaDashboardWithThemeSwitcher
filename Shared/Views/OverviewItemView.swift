//
//  OverviewItemView.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/08.
//

import SwiftUI

struct OverviewItemView: View {
    let item: OverviewItem
    var body: some View {
        ForEach(Array(item.data.keys), id: \.self) { key in
            let data = item.data[key]!
            let (previous, current) = data
            let isPreviousNegative = previous < 0
            ZStack {
                Color("CardColor")
                VStack {
                    HStack {
                        Text(key.rawValue)
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color("BodyColor"))
                        Spacer()
                        item.socialMedia.logo
                            .resizable()
                            .scaledToFit()
                    }
                    .frame(height: 24)
                    HStack {
                        Text(current, format: .number)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("TitleColor"))
                        Spacer()
                        HStack {
                            Image(decorative: isPreviousNegative ? "Down" : "Up")
                                .resizable()
                                .frame(width: 8, height: 4)
                            Text("\(abs(previous))%")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(isPreviousNegative ? "NegativeColor" : "PositiveColor"))
                        }
                    }
                }
                .padding(24)
            }
            .cornerRadius(15)
            .fixedSize(horizontal: false, vertical: true)
        }
    }
}

struct OverviewItemView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewItemView(item: .init())
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
