//
//  Part_2_Landing.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Landing: View {
    var body: some View {
        let text =
        "“Who are you calling French?” you ask, looking from Chrono to the crown clad extraterrestrial.\n\n“Why, you of course,” the regal alien states with certainty. “Welcome! I am the King of Covarnius. You may call me King Zanarq.”\n\nAnxiety blooms in the pit of your stomach. If these aliens think you’re French, then clearly they have the wrong person...but if you tell them the truth now, who knows how they’ll react?\n\nYou’ve seen the movies, you know this makes you expendable.\n\nOn the other hand, you’re not some super genius scientist. How are you going to help?\n\nSeveral tall Covarnians in official garb usher you out of the ship. “My guards will now take you to your new lab and brief you on your mission.” King Zanarq informs you. You swallow hard and tell him:"
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Not_Scientist()), decision1: "I'm Not a Scientist!", secondChoice: AnyView(Part_1_Fake_Til_You_Make()), decision2: "I'm a Scientist after all!")
    }
}

struct Part_2_Landing_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Landing()
    }
}
