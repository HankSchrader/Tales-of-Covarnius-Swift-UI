//
//  Part_3_Two_Diplomats.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Two_Diplomats: View {
    var body: some View {
        let text =
        "“What is going on here?” Chief Korgle demands. He seems taken off guard...hopefully that’s a good thing.\n\n“Two Covarnian Ambassadors requested permission to dock,” the quartermaster informs Chief Korgle. “I was escorting them to you for a meeting.”\n\nThe guard seems to stand up straighter and speak clearer than before. Even he seems nervous around Chief Korgle, you notice.\n\n“And what is this concerning?” Chief Korgle asks, turning to you and Chrono.\n\nIt is imperative that you answer this question correctly. If you say the wrong thing, it could spell doom for all the Covarnians. You need more time on the Sinisterian ship so you can find the control room. Thinking quickly, you try to decide what you could say to make the chief have a meeting with you?"
        
        getPageView(mainText: text, firstChoice: AnyView(Part_4_Two_Diplomats()))
    }
}

struct Part_3_Two_Diplomats_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Two_Diplomats()
    }
}
