//
//  ErrorView.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 1/29/22.
//

import SwiftUI

struct ErrorView: View {
    let choice: String
    var body: some View {
        VStack {
            Text("The app crashed! You landed here because a choice was made that does not exist in the app.")
            Text("🐜🐜🐜🐜🤬")
            Text("Unable to navigate to page with PAGE NAME: \(choice)")
            Text("Sara...let Erik know which choice it faled on! 🤣!")
        }
        NavigationLink(destination: TitleView().navigationBarBackButtonHidden(false)) {
            Text("Main Menu")
        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(choice: "")
    }
}
