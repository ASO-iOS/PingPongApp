//
//  TabNavRoutes.swift
//  SoccerApp
//
//  Created by admin on 28.08.2023.
//

import Foundation

enum TabNavRoutes: ScreenRoute {
    case mainView
    case statisticsView
    case newsView
    case profileView
    
    var screen: ScreenData<TabNavRoutes> {
        switch self {
        case .mainView:
            return ScreenData(title: "Main", icon: "house.fill", destination: .mainView)
        case .statisticsView:
            return ScreenData(title: "Statistics", icon: "chart.bar.xaxis", destination: .statisticsView)
        case .newsView:
            return ScreenData(title: "News", icon: "newspaper.fill", destination: .statisticsView)
        case .profileView:
            return ScreenData(title: "Profile", icon: "person.fill", destination: .profileView)
        }
    }
}




