//
//  StartGameView.swift
//  PingPongApp
//
//  Created by Mnatsakan Work on 25.09.23.
//

import SwiftUI

struct StartGameView: View {
    @ObservedObject var router: NavRouter<NavRoutes>
    
    var body: some View {
        VStack {
            PersistenceView()
            Button("Start Game") {
                withAnimation(.easeInOut) {
                    router.route = .gameScene
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .transition(router.route?.screen.transition ?? .identity)
    }
}

struct StartGameView_Previews: PreviewProvider {
    static var previews: some View {
        StartGameView(router: NavRouter<NavRoutes>(route: nil))
    }
}
