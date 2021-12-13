//
//  Part_1_Clog_Toilet.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Clog_Toilet: View {
    static let PageName = "Part_1_Clog_Toilet"
    @State var showMenu = false
    var body: some View {
        let text =
        "Clogging the toilet is the only way to go.\n\nYou rush into the bathroom and notice it looks a lot like a bathroom you'd find on Earth...toilets, sinks and…bingo! Toilet paper. You rush over and grab the roll from it’s holder. Moving quickly, you stuff the paper down the toilet and flush. The water gurgles, spurts and then begins to rise. Yes! It’s working! On to the next toilet. You repeat the process with the remaining toilets until they are all overflowing, flooding the bathroom.\n\nBy now your sneakers are soaked, but the job is done. In the next moment, the chief and his quartermaster run into the bathroom. “What happened in here?” the chief questions.\n\n“It was all that tre-bok!” you exclaim."
        
        getPageView(mainText: text, firstChoice: AnyView(Part_2_Clog_Toilet()))
    }
}

struct Part_1_Clog_Toilet_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Clog_Toilet()
    }
}
