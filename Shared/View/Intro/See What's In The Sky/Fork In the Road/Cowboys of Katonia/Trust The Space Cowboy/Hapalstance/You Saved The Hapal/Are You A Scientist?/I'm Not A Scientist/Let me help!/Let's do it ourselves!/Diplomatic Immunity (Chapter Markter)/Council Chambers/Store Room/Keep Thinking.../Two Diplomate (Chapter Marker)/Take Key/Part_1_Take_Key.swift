//
//  Part_1_Take_Key.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Take_Key: View {
    static let PageName = "Part_1_Take_Key"
    @State var showMenu = false
    
    var body: some View {
        let text =
        "You reach out as quietly as possible and grab the dangling key. The quartermaster continues unphased down the hallway and you feel like you’ve just achieved a small victory.\n\nAs you look at the shiny key in your hands you notice Chrono looking at you with a “you’re going to get us killed kind of look.” You shrug and shove the key into your pocket.\n\nAs the three of you round a corner in the hall, you come face to face with another Sinisterian. He looks a lot like the one leading you down the hall except dressed in a fancier uniform. It must be Chief Korgle."
        getPageView(mainText: text, firstChoice: AnyView(Part_3_Two_Diplomats()))
    }
}

struct Part_1_Take_Key_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Take_Key()
    }
}
