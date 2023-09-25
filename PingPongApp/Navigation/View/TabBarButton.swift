//
//  TabBarButton.swift
//  SoccerApp
//
//  Created by admin on 28.08.2023.
//

import SwiftUI

struct TabBarButton: View {
    let imageName: String
    let text: String
    let index: TabNavRoutes
    @Binding var selection: TabNavRoutes
    
    var isSelected: Bool {
        index == selection
    }
    
    var body: some View {
        Button(action: {
            selection = index
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(isSelected ? .blue : .gray)
                
                    Text(text)
                    .font(.footnote)
                        .foregroundColor(isSelected ? .blue : .gray)
            }.padding(.top, 8)
        })
        .frame(maxWidth: .infinity)
    }
}
