//
//  Part_1_DIssect_My_Brains.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Dissect_My_Brains: View {
    var body: some View {
        let text =
        "Thoughts of scalpels and examination tables suddenly fill your head. The last thing you want is to become a test subject in some alien experiment!\n\nYou tell the alien that you won’t go with him. “How do I know you won’t just dissect my brain?” you ask accusingly. Your fists are clenched with anger and fright.\n\nThe alien stares at you as if you are completely crazy.\n\n“Why on Covarnius would I do a thing like that?” The alien asks indignantly. “Do you have any idea how messy that would be?”"
        getPageView(mainText: text, firstChoice: AnyView(Part_2_Dissect_My_Brains()))
    }
}

struct Part_1_Dissect_My_Brains_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Dissect_My_Brains()
    }
}