//
//  PersistenceView.swift
//  PingPongApp
//
//  Created by Mnatsakan Work on 25.09.23.
//

import SwiftUI
import RealmSwift

struct PersistenceView: View {
    let dataManager = PersistableDataManager()
    
    @ObservedResults(PersistableData.self) var scores
    
    init() {
        if scores.isEmpty {
            dataManager.createData(playerOneScore: 0, playerTwoScore: 0)
            print(scores.count)
        }
    }
    
    var body: some View {
        VStack {
            ForEach(scores, id: \.id) { score in
                Text("SCORE: \(score.playerOneScore):\(score.playerTwoScore)")
            }
            Button("add") {
                if let score = scores.first {
                    dataManager.updateData(id: score.id,
                                           playerOneScore: score.playerOneScore + 1,
                                           playerTwoScore: score.playerTwoScore + 1)
                } 
            }
        } //VSTACK
    }
}

struct PersistanceView_Previews: PreviewProvider {
    static var previews: some View {
        PersistenceView()
    }
}
