//
//  Part_3_Crash_Wall.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Crash_Wall: View {
    var body: some View {
        let text =
        "Luna picks the key up in her mouth and saunters back over to the cell. You take the key from her mouth and try to ignore the fact that it’s dripping with drool. Hurriedly, you unlock the cell door freeing you and Chrono. “Now let’s get out of here before that guard comes back!”\n\nFirst things first, we need to get off of this ship,” you say as you take the lead down the long corridor.\n\n“And then what?” Chrono asks dejectedly. “We’re too late, the invasion has already begun!”\n\n“It’s never too late,” you exclaim, trying to sound more confident than you feel."
        getPageView(mainText: text, firstChoice: AnyView(Part_2_Fetch_Key()))
    }
}

struct Part_3_Crash_Wall_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Crash_Wall()
    }
}
