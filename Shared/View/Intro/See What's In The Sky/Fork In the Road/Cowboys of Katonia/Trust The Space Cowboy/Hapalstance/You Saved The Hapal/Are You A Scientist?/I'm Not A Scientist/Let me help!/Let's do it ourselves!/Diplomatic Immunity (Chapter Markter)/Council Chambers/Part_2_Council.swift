//
//  Part_2_Council.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Council: View {
    static let PageName = "Part_2_Council"
    @State var showMenu = false
    var body: some View {
        let text =
        "When you reach the back of the building you’re hit with the most awful stench you’ve ever smelled. (And you had to house train Luna, so you know awful stenches.) The smell is coming from the dumpsters sitting all around.\n\nYou hold your nose and try not to gag. No wonder they don’t bother locking this door. The stench is all the security needed. Chrono pulls open a door wedged between two of the dumpsters and you both hurry inside."
        
        getPageView(mainText: text, firstChoice: AnyView(Part_3_Council()))
    }
}

struct Part_2_Council_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Council()
    }
}
