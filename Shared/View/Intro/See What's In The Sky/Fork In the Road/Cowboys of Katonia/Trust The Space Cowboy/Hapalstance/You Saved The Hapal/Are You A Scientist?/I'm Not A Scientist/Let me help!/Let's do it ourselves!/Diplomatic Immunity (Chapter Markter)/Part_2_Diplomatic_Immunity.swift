//
//  Part_2_Diplomatic_Immunity.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Diplomatic_Immunity: View {
    var body: some View {
        let text =
        "“Our first option is to sneak back into the Covarnian council chamber and grab the robes from there,” Chrono explains. “All we need are two robes and a pass key. Then we can use the pass key to take one of the Covarnian cruisers from the back.” You smile as you see the plan fall into place. Chrono scratches his chin in thought, and then suggests an alternative.\n\n“Or, it just so happens my neighbor is a Covarnian Ambassador,” Chrono says. “We could borrow the items from his house. Then return them before he ever knows they were gone.”\n\nYou don’t like the idea of borrowing from a Covarnian ambassador without permission. That seems like it would have big repercussions if you get caught. But on the other hand, it might be easier than trying to sneak past the guards."
        
        getPageView(mainText: text, firstChoice: AnyView(Part_1_House()), decision1: "\"Borrow\" from the ambassador.", secondChoice: AnyView(Part_1_Council()), decision2: "Sneak into the council store room.")
    }
}

struct Part_2_Diplomatic_Immunity_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Diplomatic_Immunity()
    }
}
