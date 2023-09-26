//
//  PersistableDataManager.swift
//  PingPongApp
//
//  Created by Mnatsakan Work on 25.09.23.
//

import RealmSwift

final class PersistableDataManager {

    private let realm: Realm?

    init() {
        realm = try? Realm()
    }

    // MARK: - Create

    func createData(playerOneScore: Int, playerTwoScore: Int) {
        guard let realm else { return }
        let newData = PersistableData()
        newData.playerOneScore = playerOneScore
        newData.playerTwoScore = playerTwoScore

        do {
            try realm.write {
                realm.add(newData)
            }
        } catch {
            print("Error adding data to Realm: \(error.localizedDescription)")
        }
    }

    // MARK: - Read

    func getAllData() -> Results<PersistableData>? {
        guard let realm else { return nil }
        return realm.objects(PersistableData.self)
    }

    // MARK: - Update

    func updateData(id: ObjectId, playerOneScore: Int, playerTwoScore: Int) {
        guard let realm else { return }
        do {
            try realm.write {
                if let data = realm.objects(PersistableData.self).filter({$0.id == id}).first {
                    data.playerOneScore = playerOneScore
                    data.playerTwoScore = playerTwoScore
                }
            }
        } catch {
            print("Error updating data in Realm: \(error.localizedDescription)")
        }
    }

    // MARK: - Delete

    func deleteData(data: PersistableData) {
        guard let realm else { return }
        do {
            try realm.write {
                realm.delete(data)
            }
        } catch {
            print("Error deleting data from Realm: \(error.localizedDescription)")
        }
    }
    
    func deleteAllData() {
        guard let realm else { return }
        do {
            try realm.write {
                for data in realm.objects(PersistableData.self) {
                    realm.delete(data)
                }
            }
        } catch {
            print("Error deleting ALL data from Realm: \(error.localizedDescription)")
        }
    }
}
