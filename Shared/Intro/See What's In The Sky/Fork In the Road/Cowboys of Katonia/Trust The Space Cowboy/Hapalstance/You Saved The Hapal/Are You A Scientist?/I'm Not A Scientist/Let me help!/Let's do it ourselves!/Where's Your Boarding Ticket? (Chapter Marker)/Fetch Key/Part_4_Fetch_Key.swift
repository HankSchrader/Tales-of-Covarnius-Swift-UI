//
//  Part_4_Fetch_Key.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_4_Fetch_Key: View {
    var body: some View {
        let text =
        "Chrono’s eyes light up and a flicker of hope dances across his face. However, it’s quickly extinguished.\n\n“It’s broken,\" he responds, \"I haven’t been able to figure out how to fix it.” Chrono stares downtrodden at the ground.“Well, between you and me, I’m sure we can fix it. How hard could it be?” you say reassuringly.\n\n“What choice do we have?” Chrono says while surveying the legions of Sinisterians destroying his home planet.\n\n“Quick, we need to sneak to your house and try to fix it,” you whisper urgently to your alien companion. In all the excitement of getting off the ship, it hadn’t occurred to you that Covarnius is now hostile territory."
        
        getPageView(mainText: text, firstChoice: AnyView(Part_5_Fetch_Key()))
        
    }
}

struct Part_4_Fetch_Key_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Fetch_Key()
    }
}
