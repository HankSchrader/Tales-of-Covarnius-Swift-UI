//
//  Part_3_Hapalstance.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_3_Hapalstance: View {
    var body: some View {
        let text =
        "The fresh mountain air is invigorating after your nice nap. You hope that all aliens are as friendly as Kayo.\n\n“Well, here's your spaceship,” Kayo bellows proudly. “Good as new!”\n\nJust as you are about to jump in, a distressed cry is heard from behind the ranch house. It’s a sad cry, a mix between a baby elephant and a lamb.\n\n“That sounded like the baby hapal,” Kayo says with alarm."
        getPageView(mainText: text, firstChoice: AnyView(Part_4_Hapalstance()))
    }
}

struct Part_3_Hapalstance_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Hapalstance()
    }
}
