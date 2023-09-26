//
//  ScreenData.swift
//  SoccerApp
//
//  Created by admin on 28.08.2023.
//

import Foundation
import SwiftUI

struct ScreenData<T: ScreenRoute> {
    let title: String
    let icon: String
    let transition: AnyTransition
    let destination: T
    
    init(title: String, icon: String, transition: AnyTransition = .identity, destination: T) {
        self.title = title
        self.icon = icon
        self.transition = transition
        self.destination = destination
    }
}
