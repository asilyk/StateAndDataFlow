//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Alexander on 29.04.2022.
//

import SwiftUI

final class StorageManager: ObservableObject {
    @AppStorage("isRegistered") var isRegistered = false
    @AppStorage("name") var name = ""

    func updateStorage(with newName: String) {
        name = newName
    }

    func updateStorage(with isRegistered: Bool) {
        self.isRegistered = isRegistered
    }

    func update(userManager: UserManager) {
        userManager.name = name
        userManager.isRegistered = isRegistered
    }

    func logOut() {
        isRegistered = false
        name = ""
    }
}
