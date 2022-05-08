//
//  ColorScheme.swift
//  Social Media Dashboard With Theme Switcher (iOS)
//
//  Created by Jinwook Kim on 2022/05/08.
//

import SwiftUI

class GlobalState: ObservableObject {
    @Published var colorScheme: ColorScheme = .light
}
