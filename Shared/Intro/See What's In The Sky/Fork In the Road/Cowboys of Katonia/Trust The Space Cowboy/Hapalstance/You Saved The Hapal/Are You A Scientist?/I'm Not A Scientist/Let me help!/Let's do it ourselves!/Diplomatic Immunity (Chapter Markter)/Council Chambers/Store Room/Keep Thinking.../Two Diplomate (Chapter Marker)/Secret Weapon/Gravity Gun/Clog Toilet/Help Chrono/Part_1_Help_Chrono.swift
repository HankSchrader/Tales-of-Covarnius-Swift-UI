//
//  Part_1_Help_Chrono.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Help_Chrono: View {
    var body: some View {
        let text =
        "You run into the control room where Chrono is busy typing at a large console.\n\n“Good job with the distraction!” Chrono congratulates you.\n\n“Yes, a very good job indeed,” the chief says from behind you.\n\nYou whirl around and standing behind you is the Sinisterian chief. Oh no! This is exactly what you were afraid of. Clogging the toilets was not a long enough distraction.\n\n“Clogging the toilets? Really?” The chief says with exasperation. Chief Korgle raises his hand in the air with one scaly finger pointed upwards. All of a sudden, you are surrounded by three Sinisterian guards, poking you with ray guns!"
        
        getPageView(mainText: text, firstChoice: AnyView(Bad_Distraction()))
    }
}

struct Part_1_Help_Chrono_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Help_Chrono()
    }
}
