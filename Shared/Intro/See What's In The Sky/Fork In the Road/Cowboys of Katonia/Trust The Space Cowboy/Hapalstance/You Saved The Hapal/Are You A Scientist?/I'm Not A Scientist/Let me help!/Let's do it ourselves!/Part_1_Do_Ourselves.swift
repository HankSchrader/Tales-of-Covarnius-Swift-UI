//
//  Part_1_Do_Ourselves.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Do_Ourselves: View {
    var body: some View {
        let text =
        "“But how?” Chrono asks. “King Zanarq turned the plan down and that was the only idea we had.”\n\n“We don’t need King Zanarq,” you say confidently. “We’ll board the Sinisterian ship ourselves. We can do it!”\n\n“Unfortunately, we can’t.” Chrono argues. “We’d have to be Covarnian Ambassadors in order to get onto the Sinisterian ship. And I don’t know about you, but I’m not an ambassador.\"\n\nYou think for a minute, mulling over the new information. “What if we just sneak onto the Sinisterian ship?” you suggest with a shrug.\n\n“That’s possible,” Chrono answers, “but very risky.”\n\n“Or what if we disguise ourselves as Covarnian ambassadors?” you add, throwing out another option.\n\n“Again, possible,” Chrono replies, “but again, very risky.”"
        
        getPageView(mainText: text, firstChoice: AnyView(Part_2_Do_Ourselves()))
    }
}

struct Part_1_Do_Ourselves_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Do_Ourselves()
    }
}
