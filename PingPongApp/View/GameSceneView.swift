//
//  GameSceneView.swift
//  PingPongApp
//
//  Created by Mnatsakan Work on 25.09.23.
//

import SwiftUI
import SpriteKit

struct GameSceneView: View {
    @ObservedObject var router: NavRouter<NavRoutes>
    
    var scene: SKScene  {
        let scene = GameScene(size: CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height), router: router)
        scene.scaleMode = .aspectFit
        scene.backgroundColor = .black
        return scene
    }
    
    var body: some View {
        SpriteView(scene: scene)
            .ignoresSafeArea()
            .transition(router.route?.screen.transition ?? .identity)
    }
}

struct GameSceneView_Previews: PreviewProvider {
    static var previews: some View {
        GameSceneView(router: NavRouter<NavRoutes>(route: nil))
    }
}
