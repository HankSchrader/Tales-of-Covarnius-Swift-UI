//
//  Bronze_Ending.swift
//  Tales of Covarnius
//
//  Created by Erik Mikac on 5/4/22.
//

import SwiftUI

struct Bronze_Ending: View {
    static let PageName = "Bronze"
    @State var showMenu = false
 

    var body: some View {
        let text = "Good job! But if you play again, you can find even better endings..."

        let decision1 = "Congratulations!"
        let firstChoicePageName = DedicationView.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Silver", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Bronze_Ending_Previews: PreviewProvider {
    static var previews: some View {
        Bronze_Ending()
    }
}
