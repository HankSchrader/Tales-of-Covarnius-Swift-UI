//
//  Part_4_Two_Diplomats.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_4_Two_Diplomats: View {
    var body: some View {
        let text =
        "Aren’t ambassadors supposed to be peaceful? You think to yourself. Maybe you’re there to broker peace between them and the Covarnians. That sounds believable and could buy Chrono enough time to get to the control room and reroute the coordinates to the black hole.\n\n On the other hand, the Sinisterians obviously don’t want peace...or they wouldn’t be invading.\n\nMaybe a more forceful tactic would be the way to go. You could tell Chief Korgle that the Covarnians have developed a top secret weapon capable of destroying them. That would be sure to get the chief’s attention and make him listen."
        
        
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Secret_Weapon()), decision1: "We have a secret weapon!", secondChoice: AnyView(Part_1_Peace()), decision2: "We want peace!")
    }
}

struct Part_4_Two_Diplomats_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Two_Diplomats()
    }
}
