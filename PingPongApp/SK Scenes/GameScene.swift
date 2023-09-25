//
//  GameScene.swift
//  PingPongApp
//
//  Created by Mnatsakan Work on 25.09.23.
//

import SwiftUI
import SpriteKit

final class GameScene: SKScene {
    @ObservedObject var router: NavRouter<NavRoutes>
    private var button = SKSpriteNode()
    
    init(size: CGSize, router: NavRouter<NavRoutes>) {
        self.router = router
        super.init(size: size)
        
        button = SKSpriteNode(color: .red, size: CGSize(width: 50, height: 50))
        button.position = CGPoint(x: 60, y: size.height - 60)
        addChild(button)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        // Check if the location of the touch is within the button's bounds
        if button.contains(location) {
            withAnimation {
                router.route = .tabView
            }
        }
    }
}
