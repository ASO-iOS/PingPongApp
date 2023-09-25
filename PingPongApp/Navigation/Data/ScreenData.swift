//
//  ScreenData.swift
//  SoccerApp
//
//  Created by admin on 28.08.2023.
//

import Foundation

struct ScreenData<T: ScreenRoute> {
    let title: String
    let icon: String
    let destination: T
}
