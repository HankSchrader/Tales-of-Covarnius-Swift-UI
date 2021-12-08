//
//  Part_1_Ask_Chrono.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Ask_Chrono: View {
    var body: some View {
        let text =
        "“I spent last summer working here as a Covarnian Cleanliness Companion or CCC for short,” Chrono explains.\n\n“That sounds impressive.”\n\n“Not really,” Chrono replies. “That’s just a fancy way of saying garbage man. I still had fun working here though.”\n\n A sense of uneasiness washes over you. “We should probably get to the store room now before we are detected.”\n\nChrono nods and takes the lead down the pristine hallway. The CCC really does a good job you think to yourself. The halls are immaculate"
        
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Store_Room()))
    }
}

struct Part_1_Ask_Chrono_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Ask_Chrono()
    }
}
