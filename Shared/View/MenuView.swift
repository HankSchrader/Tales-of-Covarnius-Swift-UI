//
//  MainMenu.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/3/21.
//

import SwiftUI
import SwiftUI

struct MenuView: View {
    @State private var showMenu = false
    @EnvironmentObject var log: ChapterLog

    var body: some View {
        ZStack {
            
        VStack(alignment: .leading) {
            HStack {
                let chapter: StoryPayload? = self.log.findChapter(chapterName: Constants.ChapterOne)
                if let chapter = chapter {
                    Image(systemName: "person")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    NavigationLink(destination: chapter.currentView
                                    .navigationBarBackButtonHidden(true)
                                    .environmentObject(log)) {
                        Text(Constants.ChapterOne)
                        }
                    }

                }
            .padding(.bottom)
            .foregroundColor(.gray)
            
            HStack {
                let chapter: StoryPayload? = self.log.findChapter(chapterName: Constants.ForkInTheRoad)
                if let chapter = chapter {
                    Image(systemName: "person")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    NavigationLink(destination: chapter.currentView
                                    .navigationBarBackButtonHidden(true)
                                    .environmentObject(log)) {
                        Text(Constants.ForkInTheRoad)
                        }
                    }

                }
                .foregroundColor(.gray)
                .padding(.bottom)
                
            Spacer()

    }

        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
        .zIndex(1)
    }
}



struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
