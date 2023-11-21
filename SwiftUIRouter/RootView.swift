//
//  ContentView.swift
//  SwiftUIRouter
//
//  Created by Teddy on 11/21/23.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        ViewFactory.viewForDestination(.initial)
    }
}

#Preview {
    RootView()
}
