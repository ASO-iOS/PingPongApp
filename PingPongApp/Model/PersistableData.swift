//
//  PersistableData.swift
//  PingPongApp
//
//  Created by Mnatsakan Work on 25.09.23.
//

import RealmSwift

final class PersistableData: Object, Identifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var playerOneScore: Int = 0
    @Persisted var playerTwoScore: Int = 0
}
