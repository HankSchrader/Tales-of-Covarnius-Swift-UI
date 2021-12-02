//
//  Part_1_Save_The_Hapal.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Save_The_Hapal: View {
    var body: some View {
        let text =
        "Kayo helped you, now you’re going to help him! Or at least you’re going to try…\n\nYou take off in the direction that Kayo went. Luna follows close behind with her tongue hanging out the side.\n\n“Where are you going?” Chrono questions, trying to keep up. “The ship is fixed, we can get out of here now!”\n\nYou shake your head. “Kayo helped us when we needed it. Now we need to help him… and whatever a baby hapal is.”\n\nAs you round the corner of the ranch house, you see Kayo and Kina crouching near the small opening of a cave.\n\n“What’s the matter?” you ask as you approach the couple.\n\nKayo and Kina stand up and you can see the worried looks on their faces.\n\n“The baby hapal wandered into this cave and now he’s too afraid to come out,” Kayo explains. “The problem is, we’re all too big to get through this opening to retrieve him.”"
        getPageView(mainText: text, firstChoice: AnyView(Part_2_Save_The_Hapal()))
    }
}

struct Part_1_Save_The_Hapal_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Save_The_Hapal()
    }
}
