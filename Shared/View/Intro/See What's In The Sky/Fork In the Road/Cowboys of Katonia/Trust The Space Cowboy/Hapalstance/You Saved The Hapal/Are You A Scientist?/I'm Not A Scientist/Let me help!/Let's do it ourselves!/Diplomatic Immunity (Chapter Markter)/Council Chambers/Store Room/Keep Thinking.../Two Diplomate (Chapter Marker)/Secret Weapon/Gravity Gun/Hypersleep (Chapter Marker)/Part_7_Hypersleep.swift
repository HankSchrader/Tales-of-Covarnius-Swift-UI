//
//  Part_7_Hypersleep.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_7_Hypersleep: View {
    static let PageName = "Part_7_Hypersleep"
    @State var showMenu = false
    var body: some View {
       let text =
        "“As it stands, I have bigger problems to worry about than your alleged weapon.” The chief roars in his growly voice. “I will now have to ask you to leave.”\n\nFor a moment, you have no idea what he is talking about. Weapon? What weapon? Then you remember, the original bluff! You were describing the Covarnian “secret weapon.” Stifling laughter, you do as the chief commands.\n\nYou and Chrono try to hide your smiles as you exit the Sinisterian ship. Luna and the Covarnian cruiser await you. Better get out of here before the whole ship is sucked into a blackhole!"
        getPageView(mainText: text, firstChoice: AnyView(Part_8_Hypersleep()))
    }
}

struct Part_7_Hypersleep_Previews: PreviewProvider {
    static var previews: some View {
        Part_7_Hypersleep()
    }
}
