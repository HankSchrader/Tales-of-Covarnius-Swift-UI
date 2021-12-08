//
//  Part 1 Fork In The Road.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Fork_In_The_Road: View {
    @State var showMenu = false
    @EnvironmentObject var log: ChapterLog
    var body: some View {
        let text =
        "After careful consideration, you decide the alien is probably not going to dissect your brain. The pleading look in his eyes and frightened demeanor give the impression that he does need help.\n\nAt the very least, you’ll get out of all the math homework your teacher assigned today. You cautiously approach the green hued creature. Before you know it, he is insisting you enter the spaceship.\n\n“Quickly, quickly,” the alien commands. “Covarnius can’t hold out much longer.”\n\nHe jumps back into the ship and you stumble into the seat next to his. Luna follows you into the spaceship. At least you’re not going alone! She finds a cozy corner to lay down in."
        

        let decision1 = Constants.ContinuePhrase
        let firstChoice = AnyView(Part_2_Fork_In_The_Road()
                                    .environmentObject(log))
        let storyView: StoryPayload = StoryPayload(text: text, firstChoice: firstChoice, decision1: decision1)
        storyView.chapterName = Constants.ForkInTheRoad
        storyView.currentView = AnyView(Part_1_Fork_In_The_Road())
            return DisplayView(showMenu: self.$showMenu, view: storyView)
            .onAppear(perform: {log.unlockChapter(page: storyView)})
    }
}

struct Part_1_Fork_In_The_Road_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Fork_In_The_Road()
    }
}
