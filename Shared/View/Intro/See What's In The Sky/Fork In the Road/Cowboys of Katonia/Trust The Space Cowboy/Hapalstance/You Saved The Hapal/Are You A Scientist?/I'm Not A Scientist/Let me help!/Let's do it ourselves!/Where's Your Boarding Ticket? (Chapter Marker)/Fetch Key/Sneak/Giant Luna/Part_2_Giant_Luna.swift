//
//  Part_2_Giant_Luna.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Giant_Luna: View {
    var body: some View {
        let text =
        "Not a moment too soon. Luna bursts through the ceiling, completely demolishing the extraterrestrial abode.\n\n“WOOF. WOOF,” Luna barks. Her deafening roars catch the attention of the astonished Sinisterians, who are just approaching the driveway. Luna suddenly shakes her whole body and giant fur flies.\n\n“Achoo! Achoo! Achoo!” The Sinisterians sneeze in unison. Their eyes become puffy and bloodshot. Green slime pours out of their noses, ears, and eyes. Red rashes and boils cover their slick, slimy skin."
        
        getPageView(mainText: text, firstChoice: AnyView(Part_3_Sneak()))
        
        
    }
}

struct Part_2_Giant_Luna_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Giant_Luna()
    }
}
