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
        Button("Start Game") {
            withAnimation(.easeInOut) {
                router.route = .gameScene
            }
        }
        .buttonStyle(.borderedProminent)
    }
}

struct StartGameView_Previews: PreviewProvider {
    static var previews: some View {
        StartGameView(router: NavRouter<NavRoutes>(route: nil))
    }
}
