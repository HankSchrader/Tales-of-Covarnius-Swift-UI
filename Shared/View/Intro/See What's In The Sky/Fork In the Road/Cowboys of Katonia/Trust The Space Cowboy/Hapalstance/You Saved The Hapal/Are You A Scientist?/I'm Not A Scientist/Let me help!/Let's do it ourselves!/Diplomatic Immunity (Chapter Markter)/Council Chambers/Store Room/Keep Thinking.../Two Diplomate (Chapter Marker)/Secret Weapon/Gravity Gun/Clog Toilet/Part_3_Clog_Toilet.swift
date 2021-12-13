//
//  Part_3_Clog_Toilet.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Clog_Toilet: View {
    static let PageName = "Part_3_Clog_Toilet"
    @State var showMenu = false
    var body: some View {
        let text = "As you step out into the hall, you catch sight of Chrono. He gives you a nod and dashes for the control room. Your first instinct is to follow him, he could need your help. But then you look back at the bathroom. Was that a good enough distraction? Maybe you should create another distraction to keep the chief busy a little while longer.\n\nYou look back and forth between the two doors. You shove your hands in your pockets to see if there's anything anything useful to provide an extra distraction. A broken pencil, a stick of gum, a nickel...and that key. You stare closely at the key. It has cryptic Sinisterian lettering. Completely indecipherable."
    }
}

struct Part_3_Clog_Toilet_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Clog_Toilet()
    }
}
