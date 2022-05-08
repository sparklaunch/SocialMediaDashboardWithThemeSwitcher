//
//  BackgroundView.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Color("BackgroundColor")
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
            .previewLayout(.sizeThatFits)
    }
}
