//
//  Part_3_Council.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Council: View {
    var body: some View {
        let text =
        "You inhale a breath of fresh air, happy to smell something other than hot fetid garbage. “Nice going, Chrono!” you exclaim, patting him on the back. “We’re in, now we just have to find the store room.”\n\n“I know where it is,” Chrono responds. “It’s at the end of this hall, down a flight of stairs.”\n\nYou wonder how Chrono knows so much about the Covarnian Council Chamber. After all, it’s kinda weird that such a young alien would know how to find everything in such a regal building. It’d be like you giving a tour of the White House."
        
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Boarding_Ticket()), decision1: "No time for questions.", secondChoice: AnyView(Part_1_Diplomatic_Immunity()), decision2: "Ask how he know the layout.")
    }
}

struct Part_3_Council_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Council()
    }
}
