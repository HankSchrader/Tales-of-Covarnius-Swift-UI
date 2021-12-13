//
//  Part_2_Tell.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Tell: View {
    static let PageName = "Part_2_Tell"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Thank you, you both deserve a hero’s celebration.” The king says excitedly, but his voice quickly grows weary. “We must thank Luna too, but her fur will take years to clean up.”\n\n“There may be fur everywhere, but at least we have our planet back!” Chrono points out.\n\n“Yes,” King Zanarq chuckles warmly, “I suppose we do.”"
//        getPageView(mainText: text, firstChoice: AnyView(ContentViewPageChapter1Page1()), decision1: "Congratulations!!")
    }
}

struct Part_2_Tell_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Tell()
    }
}
