//
//  InitialView.swift
//  SwiftUIRouter
//
//  Created by Teddy on 11/21/23.
//

import SwiftUI

struct InitialView: View {
    @EnvironmentObject var router: Router
    var body: some View {
        Text("Tap to move to ContentView")
            .onTapGesture {
                router.goTo(.content)
            }
    }
}

#Preview {
    InitialView()
}
