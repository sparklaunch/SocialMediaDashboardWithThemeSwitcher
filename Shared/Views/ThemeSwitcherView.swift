//
//  ThemeSwitcherView.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

struct ThemeSwitcherView: View {
    var body: some View {
        HStack {
            Text("Dark Mode")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(Color("BodyColor"))
            Spacer()
            Toggle(isOn: .constant(false)) {

            }
        }
    }
}

struct ThemeSwitcherView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeSwitcherView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
