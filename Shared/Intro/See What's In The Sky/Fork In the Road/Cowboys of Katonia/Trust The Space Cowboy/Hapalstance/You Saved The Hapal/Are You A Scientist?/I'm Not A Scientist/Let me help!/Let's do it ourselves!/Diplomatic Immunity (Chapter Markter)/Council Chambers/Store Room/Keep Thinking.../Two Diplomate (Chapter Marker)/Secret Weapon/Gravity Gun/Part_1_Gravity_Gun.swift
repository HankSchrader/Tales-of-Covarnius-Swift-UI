//
//  Part_1_Gravity_Gun.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Gravity_Gun: View {
    var body: some View {
        let content =
        "“We have developed an anti-gravity gun,” you inform Chief Korgle. “Anything caught in its beam will be instantly smushed.” You try to sound confident as you describe the secret weapon.\n\nIt's working! The chief appears apprehensive standing in the dimmed hallway, pondering over your words.\n\nYou continue, “If you continue your attack, Covarnius will have no choice but to use this weapon against you.”\n\n“Why don’t we take a moment to discuss this weapon of yours,” Chief Korgle says. He turns around and begins to walk down the long corridor. You and Chrono follow behind."
        
        getPageView(mainText: text, firstChoice: AnyView(Part_2_Gravity_Gun()))
    }
}

struct Part_1_Gravity_Gun_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Gravity_Gun()
    }
}
