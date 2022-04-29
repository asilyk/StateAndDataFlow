//
//  LogOutButtonView.swift
//  StateAndDataFlow
//
//  Created by Alexander on 29.04.2022.
//

import SwiftUI

struct LogOutButtonView: View {
    @EnvironmentObject private var storageManager: StorageManager

    var body: some View {
        Button(action: { storageManager.logOut() }) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView()
    }
}
