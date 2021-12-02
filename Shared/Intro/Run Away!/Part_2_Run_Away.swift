//
//  Part_1_Run_Away.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI

struct Part_2_Run_Away: View {
    var body: some View {
        let text = "You keep running, faster than you’ve ever ran before. You run past the big white house with three german shepherds and continue on past the garden gnomes in Mrs. Burn’s yard.\n\nSlowing down to catch your breath, you turn around and see the ship in the distance. You can’t believe aliens are really landing on Earth! You wonder what they want. Are they friendly?\n\nMaybe you should go back. You can’t help but be curious. You’re probably the first person to have ever seen an alien spaceship! On the other hand, they could be hostile. Maybe you should just keep heading home. "
        getPageView(mainText: text, firstChoice: AnyView(Went_Home()), decision1: "Go Home...", secondChoice: AnyView(Part_1_See_What_In_The_Sky()), decision2: "Turn Back!")
            
        }
    }

struct Part_2_Run_Away_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Run_Away()
    }
}
