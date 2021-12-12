//
//  Part_5_Let_Me_Help.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_5_Let_Me_Help: View {
    static let PageName = "Part_5_Let_Me_Help"
    @State var showMenu = false
    var body: some View {
        let text =
        "“That might be the worst plan I have ever heard,” King Zanarq responds quickly. “It’s almost certain death for anyone who would undertake such a mission.” King Zanarq waves his hand dismissively. The guards respond by opening the door and escorting the three of you outside.\n\n“Well that didn’t work as planned,” Chrono says matter-of-factly. “Ready to give up yet?”\n\n You think it over for a moment and respond..."
        
        
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Do_Ourselves()), decision1: "Let's do it ourselves!", secondChoice: AnyView(Part_1_Try_Give_Up()), decision2: "I give up. At least we tried...")
    }
}

struct Part_5_Let_Me_Help_Previews: PreviewProvider {
    static var previews: some View {
        Part_5_Let_Me_Help()
    }
}
