//
//  Part_1_Am_Scientist.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Fake_Til_You_Make: View {
    var body: some View {
        VStack {
        Text("You are led into a high-tech laboratory by one of the Covarnian guards. Instruments and gadgets of every different kind are spread out on metal tables. Beakers and test tubes filled with strange liquids are strewn about, and some sort of unidentifiable writing is scrawled on chalkboards all over the walls. The sounds of bubbling chemicals fill the air.\n\nA Covarnian in a long white lab coat greets you. “Ah, you must be the genius, Clyde Du Bois.”\n\n“Oui,” you answer sneakily, saying the only French word you know.\n\n”But I prefer English,” you say hurriedly afterwards.")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_2_Fake_Til_You_Make()) {
                       Text("Continue")
                   }
            .padding()
        }
    }
}

struct Part_1_Fake_Til_You_Make_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Fake_Til_You_Make()
    }
}
