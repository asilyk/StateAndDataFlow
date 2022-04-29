//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 01.11.2021.
//

import SwiftUI

struct RegisterView: View {
    @State private var userName = ""
    @State private var nameLength = 0
    @State private var counterColor = Color.red

    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $userName)
                    .multilineTextAlignment(.center)
                Text("\(nameLength)")
                    .foregroundColor(counterColor)
            }
            .padding()
            RegisterButtonView(
                userName: $userName,
                nameLength: $nameLength,
                counterColor: $counterColor
            )
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
