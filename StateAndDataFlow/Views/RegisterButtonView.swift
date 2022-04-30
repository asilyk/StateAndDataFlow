//
//  RegisterButtonView.swift
//  StateAndDataFlow
//
//  Created by Alexander on 28.04.2022.
//

import SwiftUI

struct RegisterButtonView: View {
    @State private var isNameValid = false
    @Binding var nameLength: Int
    @Binding var counterColor: Color
    @EnvironmentObject private var userManager: UserManager
    @EnvironmentObject private var storageManager: StorageManager

    let userName: String

    var body: some View {
        Button(action: registerUser) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
            .onChange(of: userName) { newValue in
                updateName(with: newValue)
            }
        }
        .disabled(!isNameValid)
    }

    private func registerUser() {
        userManager.name = userName
        userManager.isRegistered.toggle()
        storageManager.updateStorage(with: userManager.isRegistered)
    }

    private func updateName(with newValue: String) {
        nameLength = newValue.count
        isNameValid = nameLength > 2 ? true : false
        counterColor = isNameValid ? .green : .red
        storageManager.updateStorage(with: newValue)
    }
}

struct RegisterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterButtonView(
            userName: "",
            nameLength: .constant(0),
            counterColor: .constant(.red)
        )
    }
}
