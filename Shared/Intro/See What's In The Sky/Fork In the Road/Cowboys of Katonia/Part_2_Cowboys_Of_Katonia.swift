//
//  Part_2_Cowboys_Of_Katonia.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Cowboys_Of_Katonia: View {
    var body: some View {
        let isIPad = UIDevice.current.userInterfaceIdiom == .pad
        VStack {
        Text("The monitors on the console display a message in bright red letters: “EXPERIENCING TECHNICAL DIFFICULTIES”\n\nYou and Chrono exchange a glance, unsure of what to expect next.\n\nThe message on the monitor changes and you read it aloud, “Making emergency landing on next habitable planet.”")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_3_Cowboys_Of_Katonia()) {
                       Text("Continue")
                   }
        }
    }
}

struct Part_2_Cowboys_Of_Katonia_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Cowboys_Of_Katonia()
    }
}
