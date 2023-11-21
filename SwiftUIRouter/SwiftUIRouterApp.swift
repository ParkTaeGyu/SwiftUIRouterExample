//
//  SwiftUIRouterApp.swift
//  SwiftUIRouter
//
//  Created by Teddy on 11/21/23.
//

import SwiftUI

@main
struct SwiftUIRouterApp: App {
    @StateObject private var router: Router = .init()

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.path) {
                RootView()
                    .navigationDestination(for: ViewPath.self) { destination in
                        ViewFactory.viewForDestination(destination)
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    }
                    .environmentObject(router)
            }
           
        }
    }
}
