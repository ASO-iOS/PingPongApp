//
//  NavRoutes.swift
//  SoccerApp
//
//  Created by admin on 28.08.2023.
//

import SwiftUI

enum NavRoutes: ScreenRoute {
    case mainView
    case gameScene
    
    var screen: ScreenData<NavRoutes> {
        switch self {
        case .mainView:
            return ScreenData(title: "Main", icon: "", transition: .scale, destination: .mainView)
        case .gameScene:
            return ScreenData(title: "Game Scene", icon: "", transition: .move(edge: .bottom), destination: .gameScene)
        }
    }
}


