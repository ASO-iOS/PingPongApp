//
//  TabNavigationView.swift
//  SoccerApp
//
//  Created by admin on 28.08.2023.
//

import SwiftUI

struct TabNavigationView: View {
    @ObservedObject var router: NavRouter<NavRoutes>
    @ObservedObject var tabRouter: NavRouter<TabNavRoutes>
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: .init(get: {
                tabRouter.route ?? .mainView
            }, set: {
                tabRouter.route = $0
            }), content: {
                StartGameView(router: router)
                    .tag(TabNavRoutes.mainView)
                PersistenceView()
                    .tag(TabNavRoutes.statisticsView)
                Text("News View")
                    .tag(TabNavRoutes.newsView)
                Text("Profile View")
                    .tag(TabNavRoutes.profileView)
            })
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .animation(.default, value: tabRouter.route)
            
            Spacer()
            CustomTabBar(selection: .init(get: {
                tabRouter.route ?? .mainView
            }, set: {
                tabRouter.route = $0
            })).frame(height: 50).background(Color.cyan)
        }
    }
}
