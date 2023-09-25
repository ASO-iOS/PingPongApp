//
//  NavRouter.swift
//  SoccerApp
//
//  Created by admin on 28.08.2023.
//

import Combine

class NavRouter<T: ScreenRoute>: ObservableObject {
    @Published var route: T?
    
    var routeStack = NavRouteStack<T>() {
        didSet { self.route = routeStack.top() }
    }
    
    init(route: T?) {
        self.route = route
    }
    
    func push(route: T) {
        routeStack.push(route)
    }
    
    func pop() {
        routeStack.pop()
    }
    
    func popToRoot() {
        routeStack.popToRoot()
    }

}
