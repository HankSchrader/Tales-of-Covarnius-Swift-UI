//
//  Part_1_Secret_Weapon.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Secret_Weapon: View {
    var body: some View {
        let text =
        "“A top secret weapon you say?”  Chief Korgle stammers. “What kind of secret weapon?”\n\nYou’ve gotten the chief’s attention. You’re going to have to be convincing. What kind of a secret weapon?\n\nYou start to dream up the kind of weapon that would make them run for the hills. How about an ice ray? Whoever this ray hits will instantly be turned into ice cubes, left to melt in the hot Covarnian sun.\n\nHopefully that's not too low-tech, what's another cool secret weapon? How about an anti-gravity gun powered by Covarnian ore. Anyone unfortunate enough to be caught in its path will be smushed like a pancake!\n\nThe Sinisterian chief is awaiting your answer. You think it over and decide:"
        
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Ice_Ray()), decision1: "We have an Ice Ray!", secondChoice: AnyView(Part_1_Gravity_Gun()), decision2: "We have an Anti-Gravity Gun!")
    }
}

struct Part_1_Secret_Weapon_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Secret_Weapon()
    }
}
