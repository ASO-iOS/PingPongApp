//
//  NavRoutes.swift
//  SoccerApp
//
//  Created by admin on 28.08.2023.
//

import Foundation

enum NavRoutes: ScreenRoute {
    case tabView
    case gameScene
    
    var screen: ScreenData<NavRoutes> {
        switch self {
        case .tabView:
            return ScreenData(title: "Tab", icon: "", destination: .tabView)
        case .gameScene:
            return ScreenData(title: "Game Scene", icon: "", destination: .gameScene)
        }
    }
}


