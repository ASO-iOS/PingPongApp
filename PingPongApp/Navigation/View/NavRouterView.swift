//
//  NavRouterView.swift
//  SoccerApp
//
//  Created by admin on 28.08.2023.
//

import SwiftUI

struct NavRouterView: View {
    @ObservedObject var router = NavRouter<NavRoutes>(route: .mainView)
    var body: some View {
        ZStack {
            switch router.route {
            case .mainView:
                StartGameView(router: router)
                    .zIndex(1)
            case .gameScene:
                GameSceneView(router: router)
                    .zIndex(2)
            default:
                Text("!")
            }
        }
    }
}
