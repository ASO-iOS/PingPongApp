//
//  CustomTabBar.swift
//  SoccerApp
//
//  Created by admin on 28.08.2023.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selection: TabNavRoutes
    
    var body: some View {
        HStack(spacing: 0) {
            TabBarButton(imageName: TabNavRoutes.mainView.screen.icon, text: TabNavRoutes.mainView.screen.title, index: .mainView, selection: $selection)
            TabBarButton(imageName: TabNavRoutes.statisticsView.screen.icon, text: TabNavRoutes.statisticsView.screen.title, index: .statisticsView, selection: $selection)
            TabBarButton(imageName: TabNavRoutes.newsView.screen.icon, text: TabNavRoutes.newsView.screen.title, index: .newsView, selection: $selection)
            TabBarButton(imageName: TabNavRoutes.profileView.screen.icon, text: TabNavRoutes.profileView.screen.title, index: .profileView, selection: $selection)
        }
    }
}
