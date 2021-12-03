//
//  Part_9_Boarding_Ticket.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_9_Boarding_Ticket: View {
    var body: some View {
        let text =
        "Luna’s tail wags and she snaps her head back and forth. First to you...then to the guard’s desk.\n\n“Luna,” you begin, “why do you care about…” Then it hits you. A big, shiny key lays on the top of the desk. The guard must have forgotten about it in his haste to leave.\n\n“Can you get that, girl?”\n\nYou point to the key, and speak slowly to her. She barks in affirmation. The only problem is that she needs a push through the bars. Just before you help her squeeze through the bars, Chrono taps you on the shoulder.\n\n“I know how to get us out of here,” he says slyly.\n\n“How?” you reply. You realize the plan devised between you and Luna did not include Chrono.\n\nChrono raises his device triumphantly into the air. “This is an autoparker.”\n\n“A what?” you reply.\n\n“An autoparker. I just type in our coordinates and our space shuttle will automatically arrive. All we need to do is schedule it to arrive right here,” he says excitedly, pointing at the ground. “That spacecraft is equipped with mega ion engines. It will crash through the ship's wall and we’ll be able to escape.”\n\nYou feel skeptical about this plan. It sounds dangerous and probably won’t work. You turn your head back to Luna, who stares at you expectantly.\n\n“Just one button push away from freedom!” Chrono exclaims. \"So what should we do?"
        
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Boarding_Ticket()), decision1: "Have Luna fetch the key.", secondChoice: AnyView(Part_1_Crash_Wall()), decision2: "Ram spaceship into wall.")
    }
}

struct Part_9_Boarding_Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Part_9_Boarding_Ticket()
    }
}
