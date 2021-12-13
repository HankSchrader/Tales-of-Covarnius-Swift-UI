//
//  Part_9_Gravity_Gun.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_9_Gravity_Gun: View {
    static let PageName = "Part_9_Gravity_Gun"
    @State var showMenu = false
    var body: some View {
        let text =
        "But still, this distraction comes with risks. If you’re caught in the hypersleep release chamber instead of the bathroom, the jig is up. Also, you’re not sure if you know how to wake up a bunch of aliens from hypersleep.\n\nAs you stand in the dimly lit hallway, you know you have to make a decision fast. You look back and forth between the door to the bathroom and the door to the hypersleep release chamber. Finally, you decide:"

        getPageView(mainText: text, firstChoice: AnyView(Part_1_Hypersleep()), decision1: "Hypersleep Release Chamber", secondChoice: AnyView(Part_1_Clog_Toilet()), decision2: "Clog the bathroom toilets.")
    }
}

struct Part_9_Gravity_Gun_Previews: PreviewProvider {
    static var previews: some View {
        Part_9_Gravity_Gun()
    }
}
