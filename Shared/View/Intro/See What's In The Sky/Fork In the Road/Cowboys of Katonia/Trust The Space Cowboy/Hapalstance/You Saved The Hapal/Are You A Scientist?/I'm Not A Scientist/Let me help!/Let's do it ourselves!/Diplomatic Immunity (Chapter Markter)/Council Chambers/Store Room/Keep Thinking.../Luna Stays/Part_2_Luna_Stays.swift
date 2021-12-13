//
//  Part_2_Luna_Stays.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Luna_Stays: View {
    static let PageName = "Part_2_Luna_Stays"
    @State var showMenu = false
    
    var body: some View {
        let text =
        "“I really thought he'd back down,” you tell Chrono while sitting on a cold, metal bench in the brig.\n\nChrono sighs, “I guess he really didn’t like Luna. It almost seemed like he was allergic to her.”\n\nYou shrug, “Guess not,” you reply. “We’ll just have to come up with a new plan.”"
        getPageView(mainText: text, firstChoice: AnyView(Part_7_Boarding_Ticket()))
    }
}

struct Part_2_Luna_Stays_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Luna_Stays()
    }
}
