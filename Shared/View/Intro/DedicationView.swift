//
//  DedicationView.swift
//  Tales of Covarnius
//
//  Created by Erik Mikac on 6/14/22.
//

import SwiftUI

struct DedicationView: View {
    @State var showMenu = false
    static let PageName = "Dedication"
    var body: some View {
        let text = "For Jennifer Ehle\nFor always believing in Adventure."
        let decision1 = "Back to the Beginning"
        let firstChoicePageName = DedicationView.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Luna With Bee iPad", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
 
    }
}

struct DedicationView_Previews: PreviewProvider {
    static var previews: some View {
        DedicationView()
    }
}
