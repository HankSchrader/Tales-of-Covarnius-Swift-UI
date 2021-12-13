//
//  Part_1_Diplomatic_Immunity.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Diplomatic_Immunity: View {
    static let PageName = "Part_1_Diplomatic_Immunity"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Ok, then. That settles that,” Chrono says. “We have a plan, now to put it into action. Chrono stares at you expectantly, dutifully awaiting directions.\n\nSo what does come next? Scratching Luna’s ears always helps you think.\n\n“Well, we’ll need some of those fancy robes.” You count off on your fingers as you go. “And some sort of credentials. You know, just in case the Sinisterians question us.\"\n\n”Chrono still looks worried but nods with agreement. “Is there anything else you can think of?” he asks.\n\n“Just one thing,” you tell him with a slight smile. “We’ll need one of those sleek Covarnian ships.”\n\n“That should all be doable.” Chrono says with determination. “There are a few different ways we could go about procuring these items.”"
        
        getPageView(mainText: text, firstChoice: AnyView(Part_2_Diplomatic_Immunity()))
    }
}

struct Part_1_Diplomatic_Immunity_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Diplomatic_Immunity()
    }
}
