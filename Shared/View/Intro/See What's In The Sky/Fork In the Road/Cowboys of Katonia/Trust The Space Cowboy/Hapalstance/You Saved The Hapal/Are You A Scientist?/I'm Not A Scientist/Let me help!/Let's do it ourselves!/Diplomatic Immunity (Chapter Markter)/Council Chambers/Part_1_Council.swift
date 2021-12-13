//
//  Part_1_Council.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Council: View {
    static let PageName = "Part_1_Council"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Sneaking into the ambassador’s home might be a good plan,” you say. “But who knows what we’ll encounter there? We don’t know the lay of the house either, we could get lost and never even find the robes! In this case, at least we know that the robes are in the store room.”\n\nChrono nods his head, “All good points, onto the council chamber!”\n\nYou follow Chrono to the council chamber and then around to the back of the large metal building. It’s bland, utilitarian architecture starkly contrasts the vibrant flora of Covarnius. Speaking of vegetation, colorful shrubbery is planted along the walkways. It grows about a foot high with thick green branches covered in prickly little leaves the color of mustard."
        
      
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Council.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Council_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Council()
    }
}
