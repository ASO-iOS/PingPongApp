//
//  NavRouteStack.swift
//  SoccerApp
//
//  Created by admin on 28.08.2023.
//

import Foundation

struct NavRouteStack<T: ScreenRoute> {
    var routes: [T] = []
    
    mutating func push(_ s: T) {
        self.routes.append(s)
    }
    
    mutating func pop() {
        _ = self.routes.popLast()
    }
    
    mutating func popToRoot() {
        self.routes.removeAll()
    }
    
    func top() -> T? {
        return self.routes.last
    }
}
