//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/05/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                VStack {
                    HeaderView()
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
