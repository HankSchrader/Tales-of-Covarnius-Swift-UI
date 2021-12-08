//
//  Part_1_House.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_House: View {
    var body: some View {
        let text =
        "Chrono nods in agreement. “Ok, then let’s get going.”\n\nYou follow Chrono down a street lined with houses. It reminds you of your own neighborhood back on Earth, except the Covarnian homes have domed roofs with satellites connected to them.\n\n“That’s where I live,” Chrono says, pointing to one of the houses. “And this one is my neighbor, Zulak.”\n\n“Ok, let’s get those uniforms,” you say. You cross the strange yellow lawn and Chrono follows behind.\n\nApproaching the door, you wonder whether you made the right decision. Perhaps you should have taken your chances with the guards...\n\nIt’s not too late to get the uniforms from the council chamber. But who knows if that is the right decision either."
        
        
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Boarding_Ticket()), decision1: "This is getting shady. Turn back!", secondChoice: AnyView(Part_2_House()), decision2: "Break in. The mission is too important!.")
    }
}

struct Part_1_House_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_House()
    }
}
