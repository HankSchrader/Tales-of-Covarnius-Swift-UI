//
//  Part_5_Trust_The_Space_Cowboy.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_5_Trust_The_Space_Cowboy: View {
    var body: some View {
        let text =
        "“Now y’all go on and relax,” Kayo says, standing up from the table. “I’ll grab Kebo and we’ll get your ship fixed in no time!”\n\nYou see a large, overstuffed couch positioned next to a roaring fire. Having a moment to relax doesn’t sound too bad. After all that’s happened, you figure you’re entitled to a break.\n\nBut on the other hand, what if these space cowboys turn out to be thieves. They’ll fix the ship alright...then steal it!\n\nThe couch and the fire do look inviting...but the ship is your only hope to get off the planet."
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Who_Trusts_Alien_Cowboys()), decision1: "Kay Seems Suspicious...", secondChoice: AnyView( Part_5_Trust_The_Space_Cowboy()), decision2: "Take Offer To Relax")
    }
}

struct Part_5_Trust_The_Space_Cowboy_Previews: PreviewProvider {
    static var previews: some View {
        Part_5_Trust_The_Space_Cowboy()
    }
}