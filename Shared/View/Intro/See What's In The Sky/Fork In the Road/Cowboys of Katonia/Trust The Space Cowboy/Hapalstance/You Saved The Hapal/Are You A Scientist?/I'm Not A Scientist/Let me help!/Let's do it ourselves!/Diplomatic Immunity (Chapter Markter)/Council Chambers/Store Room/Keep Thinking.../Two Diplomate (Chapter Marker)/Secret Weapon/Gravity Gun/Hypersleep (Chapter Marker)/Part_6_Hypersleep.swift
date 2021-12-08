//
//  Part_6_Hypersleep.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_6_Hypersleep: View {
    var body: some View {
        let text =
        "“Are you almost done?” you exclaim, “We need to get out of here!” Chrono is hastily inputting coordinates. He either doesn’t hear you or is ignoring you.\n\nIn the next moment, Chrono hits a button and you hear a beep sound. Hopefully that’s a good thing. Chrono turns around with a huge smile on his face. “Let’s get out of here,” he says. The two of you sprint out of the control room without a moment to spare.\n\nJust as you take your seats in the chief's office, he storms back into the room.\n\n"
        getPageView(mainText: text, firstChoice: AnyView(Part_7_Hypersleep()))
    }
}

struct Part_6_Hypersleep_Previews: PreviewProvider {
    static var previews: some View {
        Part_6_Hypersleep()
    }
}
