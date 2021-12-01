//
//  Part_3_Not_Scientist.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_3_Not_Scientist: View {
    var body: some View {
        VStack {
        Text("“What’s a Sinisterian?” you ask. Judging by the Covarnians' reactions, you can tell whoever or whatever it is can’t be good.\n\nChrono wrings his hands together as he explains. “The Sinisterians are a race of aliens. They are brutal, savage warmongers to say the least. They plan to invade Covarnius and take over the planet.”")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_4_Not_Scientist()) {
                       Text("Continue")
                   }
            .padding()
        }

    }
    }

struct Part_3_Not_Scientist_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Not_Scientist()
    }
}
