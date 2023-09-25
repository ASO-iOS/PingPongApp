//
//  NavRouterView.swift
//  SoccerApp
//
//  Created by admin on 28.08.2023.
//

import SwiftUI

struct NavRouterView: View {
    @ObservedObject var router = NavRouter<NavRoutes>(route: .tabView)
    @ObservedObject var tabRouter = NavRouter<TabNavRoutes>(route: .mainView)
    var body: some View {
        ZStack {
            switch router.route {
            case .tabView:
                TabNavigationView(router: router, tabRouter: tabRouter)
                    .zIndex(1)
                    .transition(.opacity)
            case .gameScene:
                GameSceneView(router: router)
                    .zIndex(2)
                    .transition(.move(edge: .bottom))
            default:
                Text("!")
            }
        }
    }
}
