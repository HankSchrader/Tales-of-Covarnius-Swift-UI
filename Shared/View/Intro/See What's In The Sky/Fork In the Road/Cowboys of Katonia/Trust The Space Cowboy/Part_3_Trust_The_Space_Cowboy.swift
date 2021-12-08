//
//  Part_3_Trust_The_Space_Cowboy.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_3_Trust_The_Space_Cowboy: View {
    var body: some View {
        let text =
        "You take a bite of the strange stew, partially to be polite and partially because you can’t remember the last time you were this hungry. It actually tastes pretty good, you take another bite.\n\n“And that’s saying a lot,” Kayo continues as he eats his stew. “You’ve never seen a mess until you’ve owned a hapal. I guess I don’t have to tell you though,” Kayo says gesturing to Luna, who is busy lapping up a bowl of the alien stew. “You know what it’s like to own a baby hapal.\""
        getPageView(mainText: text, firstChoice: AnyView(Part_4_Trust_The_Space_Cowboy()))
        
    }
}

struct Part_3_Trust_The_Space_Cowboy_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Trust_The_Space_Cowboy()
    }
}
