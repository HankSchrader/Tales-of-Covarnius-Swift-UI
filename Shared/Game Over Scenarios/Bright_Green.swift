//
//  Bright_Green.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Bright_Green: View {
    var body: some View {
        let text =
        "The bright green liquid is as good as any, you think, then proceed to mix the the red and green liquid. The fluorescent green liquid smells like a mixture of roses and skunks, you think. Just as you mix the ingredients however, a puff of neon pink vapor billows from the vile. The vapors continue spewing forth aggressively. It won’t stop!\n\nBefore you know it, the scientist is floating! And come to think of it, you are too! The tables, vials, and everything the vapor touches gently lifts from the ground. You can’t help but notice a look of rage on the scientist’s face as he floats lazily past you.\n\nThe good news is the ceiling is keeping you from floating into the cold, oxygen-less recesses of space. The bad news is that it will take a LOT of chemical mixing to find a concoction to bring the gravity back. Well, better get to it!"
        
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Intro()), decision1: Constants.GameOverPhrase)
            }
        }

struct Bright_Green_Previews: PreviewProvider {
    static var previews: some View {
        Bright_Green()
    }
}
