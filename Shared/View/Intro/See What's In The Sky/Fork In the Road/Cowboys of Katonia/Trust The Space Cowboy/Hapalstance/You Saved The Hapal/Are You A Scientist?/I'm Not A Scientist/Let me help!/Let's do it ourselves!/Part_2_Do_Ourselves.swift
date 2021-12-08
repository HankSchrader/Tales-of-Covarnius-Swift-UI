//
//  Part_2_Do_Ourselves.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Do_Ourselves: View {
    var body: some View {
        let text =
        "“Well it seems like those are our only options,” you say after a moment of silence. “It has to be one of them.”\n\nChrono looks nervous, a bead of sweat forms on his brow. For the first time since arriving on Covarnius, you realize it’s pretty warm out. You wonder if Covarnius has seasons the same way Earth does.\n\n“Then what’s our next move?” Chrono asks, interrupting your thoughts. “I’ll leave it up to you, earthling."
        
        getPageView(mainText: text, firstChoice: AnyView(Part_3_Do_Ourselves()))
    }
}

struct Part_2_Do_Ourselves_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Do_Ourselves()
    }
}
