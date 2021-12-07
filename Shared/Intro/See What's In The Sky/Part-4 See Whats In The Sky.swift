//
//  Part-4 See Whats In The SKy.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_4_See_Whats_In_The_Sky: View {
    let text =
    "“Bonjour,” the alien says slowly, waving his long slender arm. You look at him slack jawed with confusion. The alien speaks French?\n\n“Je m’appelle Chrono,” he continues with a bow. His eyes never leave your face.\n\nYou shake your head. “Do you speak English, by chance?” you ask hesitantly.\n\nThe creature hits a button located on his belt and says, “Sorry for the confusion. I just assumed…”\n\n You can’t imagine why he assumed you spoke French, but it doesn’t matter anyway.\n\n“What do you want?” you ask him, hoping the answer isn't world domination.\n\n“I need you to come with me right away!” the alien declares alarmingly. You hesitate for a moment, and reply..."
    var body: some View {
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Dissect_My_Brains()), decision1: "\"No Way! You'll dissect my brains!\"", secondChoice: AnyView(Part_1_Fork_In_The_Road()), decision2: "\"Sure! I'll Help\"")
    }
    
}

struct Part_4_See_Whats_In_The_Sky_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_See_Whats_In_The_Sky()
    }
}
