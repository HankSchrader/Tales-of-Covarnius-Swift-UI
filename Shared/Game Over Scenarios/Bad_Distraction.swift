//
//  Bad_Distraction.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Bad_Distraction: View {
    var body: some View {
        let text =
        "“I think we’ve found new janitors for the ships, Zlakamlkak,” Chief Korgle says to the quartermaster. (Apparently, that’s his name.)\n\n“You’re correct sir, and their first job is cleaning up the mess they created in the bathroom.”\n\n“How long do we have to be janitors?” you ask.\n\n The chief gives a sly smile, “Forever!”\n\nYou and Chrono are left to clean up the mess you created in the bathroom.\n\n“After that, the mess hall needs cleaned up,” a guardsman shouts.\n\nThe good news is that the Sinisterians have an excellent retirement program and pretty good healthcare benefits.\n\nThe bad news is...well, I think that’s self-evident!"
        getPageView(mainText: text, firstChoice: AnyView(ContentViewPageChapter1Page1()), decision1: Constants.GameOverPhrase)
    }
}

struct Bad_Distraction_Previews: PreviewProvider {
    static var previews: some View {
        Bad_Distraction()
    }
}
