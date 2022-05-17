//
//  Part_2_Tell.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Secret_Ending: View {
    static let PageName = "Secret_Ending"
    @State var showMenu = false
 
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    var body: some View {
        let text =
        "“Wait!” you cry out, “I just remembered something. Kayo and the Katonians are known for cleaning up after messy Hapals…”\n“That’s right!” Chrono chimes in, “And Kayo said that if we ever needed anything, to let him know!”\nAfter a quick call, a fleet of cowboys quickly come and begin to clean up after Luna.\nKayo surveys the mess and exclaims, “This doesn’t look so bad! We’ll have it cleaned up in a few days.”\nAfter a little finagling, Chrono manages to shrink Luna back down to regular size. Just as Kayo said, Covarnius is cleaned up and back to normal within a few days time.\nYou exchange a heartfelt goodbye with your new friend Chrono and make your way back home to Earth.\nYou helped the Katonians, saved the Covarnians, and got back to Earth in one piece. I’d call that a success. I’d call that an adventure!"
       
        let decision1 = "The End. Congratulations!"
        let firstChoicePageName = Gold_Ending.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ? "Katonian" : "Katonian iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}
