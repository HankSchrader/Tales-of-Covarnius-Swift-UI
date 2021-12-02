//
//  Part_3_Save_The_Hapal.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_3_Save_The_Hapal: View {
    var body: some View {
        let text =
        "“You did it! You saved the baby hapal!” Kayo exclaims with exuberance. “How can we ever thank you?”\n\n“You’ve already done so much for us, it was the least I could do,” you tell the couple.\n\n“That was just some Katonian hospitality,” Kayo says with a wave of his hand. What you did to rescue our hapal was above and beyond… Now if you ever need anything, anything at all. Don’t you hesitate to ask.”\n\nKayo and Kina walk you back to your ship and Kina gives you a big bag of mekop for the road... er, um journey.\n\nYou, Chrono and Luna jump into the ship and wave goodbye as you ascend into the sky. You’re glad you were able to help them rescue their baby hapal. It’s a good thing you had to make an emergency landing after all!"
        getPageView(mainText: text, firstChoice: AnyView(Part_4_Save_The_Hapal()))
    }
}

struct Part_3_Save_The_Hapal_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Save_The_Hapal()
    }
}
