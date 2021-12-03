//
//  Part_8_Hypersleep.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_8_Hypersleep: View {
    var body: some View {
        let text =
        "As soon as you’re away from the Sinisterian ship, you and Chrono break out into celebration. You cheer and clap at a job well done. Even Luna can tell there is cause for celebration as she wags her tail and licks your face.\n\nSuddenly the Sinisterian ship stops dead in its tracks. It appears to be getting stretched like a piece of spaghetti. Then, in the blink of an eye, it's sucked into the blackhole like a vacuum cleaner!"
        
        getPageView(mainText: text, firstChoice: Part_9_Hypersleep())
    }
}

struct Part_8_Hypersleep_Previews: PreviewProvider {
    static var previews: some View {
        Part_8_Hypersleep()
    }
}
