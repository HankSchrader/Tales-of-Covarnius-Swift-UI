//
//  Part_8_Gravity_Gun.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_8_Gravity_Gun: View {
    var body: some View {
        let text =
        "On the other hand, what if it’s not a big enough distraction. What if it’s not enough time for Chrono to get to the control room and change the coordinates?\n\nSuddenly you remember the hypersleep release chamber that you passed on your way in. What if you could wake up all the Sinisterians from hypersleep? That definitely seems like a situation worthy of Chief Korgle’s attention. And a distraction that would keep the Sinisterians busy long enough for Chrono to get to the control room."
        getPageView(mainText: text, firstChoice: AnyView(Part_9_Gravity_Gun()))
    }
}

struct Part_8_Gravity_Gun_Previews: PreviewProvider {
    static var previews: some View {
        Part_8_Gravity_Gun()
    }
}
