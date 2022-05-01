//
//  ErrorViewMutualExclusion.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 2/6/22.
//

import SwiftUI

struct ErrorViewMutualExclusion: View {
    let currentPageView: String
    var body: some View {
        VStack {
            Text("The app crashed! You landed here because the app was looking for an element to delete that doesn't exist.")
            Text("🐜🐜🐜🐜🤬")
            Text("Unable to navigate FROM page with PAGE VIEW: \(currentPageView)")
            Text("Sara...let Erik know which choice it failed on! 🤣!")
        }
        NavigationLink(destination: TitleView().navigationBarBackButtonHidden(false)) {
            Text("Main Menu")
        }
    }
}

struct ErrorViewMutualExclusion_Previews: PreviewProvider {
    static var previews: some View {
        ErrorViewMutualExclusion(currentPageView: "")
    }
}
