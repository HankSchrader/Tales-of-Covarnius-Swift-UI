//
//  Part_4_Clog_Toilet.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_4_Clog_Toilet: View {
    static let PageName = "Part_4_Clog_Toilet"
    @State var showMenu = false
    var body: some View {
        let text =
        "“What does this say?” you cry frustratedly to yourself. As if the key hears you, the scrawl rearranges, mixes and molds into something more familiar: English.\n\nIt says, “Hypersleep disengagement key”. Chewing your lip, you stare intently at the key. Could this provide any value? Does this even matter? Maybe you should just help Chrono. The aliens have already been distracted, no reason to push your luck!"
        
        
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Hypersleep()), decision1: "Korgle's distracted. Help Chrono", secondChoice: AnyView(Part_1_Clog_Toilet()), decision2: "Create another distraction.")
    }
}

struct Part_4_Clog_Toilet_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Clog_Toilet()
    }
}
