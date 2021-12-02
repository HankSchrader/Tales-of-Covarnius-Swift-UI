//
//  Part_2_Greatest_Scientists.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Greatest_Scientists: View {
    var body: some View {
        let text =
        "“There may have been a slight...incident,” Chrono says shifting in his seat, eyes cast downward. Then his mood shifts, he snaps his head up and looks at you. “But once I get Earth’s greatest scientist back to Covarnius, they’ll all see I’m smarter than they think. Now if you’re ready, I’m going to engage hypersleep.”\n\nEarth’s greatest scientist? I sure hope he’s not talking about me, you think worriedly.\n\nChrono leads you to one of two large comfy sofas at the back of the tiny spaceship. It looks like the kind of couch that would be found in a psychologist’s office. You hesitantly lay down and instantly sink into the warm, cushiony lining. Luna leaps onto the couch next to you and snuggles up close.\n\n“These couches impart a sleeping agent into your skin upon contact,” Chrono explains. “That’s why you’re getting so tired. Do me a favor and count to ten.”\n\n“Sure,” you reply groggily. “One...two…”"
       getPageView(mainText: text, firstChoice: AnyView(Part_1_Landing()))
    }
}

struct Part_2_Greatest_Scientists_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Greatest_Scientists()
    }
}
