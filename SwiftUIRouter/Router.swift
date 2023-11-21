//
//  Router.swift
//  SwiftUIRouter
//
//  Created by Teddy on 11/21/23.
//

import SwiftUI

import SwiftUI

enum ViewPath: String, Hashable {
    case initial
    case content
}

class Router: ObservableObject {
    @Published var path = NavigationPath()

    func clear() {
        path = .init()
    }

    func goTo(_ viewPath: ViewPath) {
        path.append(viewPath)
    }

    func goBack() {
        path.removeLast()
    }
}

struct ViewFactory {
    @ViewBuilder
    static func viewForDestination(_ destination: ViewPath) -> some View {
        switch destination {
        case .initial: InitialView()
        case .content: ContentView()
        }
    }
}
