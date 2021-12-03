//
//  Part_1_Store_Room.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Store_Room: View {
    var body: some View {
        let text =
        "You make it to the store room door without ever seeing a guard. This is easier than you thought it would be!\n\nYou enter the small room. There are racks and racks of the fancy robes with insignias embroidered on them.\n\n“Let's hurry,” you tell Chrono. “I don’t want to be here any longer than we have to be.” You grab two robes off of their hangers and shove down into your backpack. Meanwhile, Chrono has been rummaging through one of the boxes.\n\n“Found it!” Chrono says holding up a triangular shaped key card.\n\n“Great,” you answer as you finish zipping up your bag. “Phase one is almost complete.”\n\nYou head to the door and are about to open it when you hear footsteps on the other side. It’s probably a good idea to make sure the coast is clear before exiting."
        
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Boarding_Ticket()), decision1: "Check underneath the door.", secondChoice: AnyView(Caught_By_Covarnian()), decision2: "Look out the window.")
    }
}

struct Part_1_Store_Room_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Store_Room()
    }
}
