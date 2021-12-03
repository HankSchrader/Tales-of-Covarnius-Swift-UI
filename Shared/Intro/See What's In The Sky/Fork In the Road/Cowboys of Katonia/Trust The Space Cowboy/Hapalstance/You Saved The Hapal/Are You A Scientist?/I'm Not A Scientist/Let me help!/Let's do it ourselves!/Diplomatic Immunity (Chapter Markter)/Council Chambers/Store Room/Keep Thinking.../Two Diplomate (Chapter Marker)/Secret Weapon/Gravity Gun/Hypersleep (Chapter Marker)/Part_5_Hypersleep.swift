//
//  Part_5_Hypersleep.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_5_Hypersleep: View {
    var body: some View {
        let text =
        "Your patience is growing thin. When will Chrono be done?\n\nNo sign of Chief Korgle yet. The “malfunctioning” hypersleep chamber must be just the thing to keep him distracted.\n\nYou wonder how much longer this will last. How much longer until the chief fixes the hypersleep problem? How much longer until Chrono is done entering coordinates?\n\nWhat’s probably only been a few minutes seems like much longer"
        getPageView(mainText: text, firstChoice: AnyView(Part_6_Hypersleep()))
    }
}

struct Part_5_Hypersleep_Previews: PreviewProvider {
    static var previews: some View {
        Part_5_Hypersleep()
    }
}
