//
//  RootViewModel.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/4/21.
//

import SwiftUI

class ChapterLog: ObservableObject {
    @Published var storyPages = [StoryPayload]()
    //These are the pages that will be on the side nav.
    @Published var chapterSelectionPages = [StoryPayload]()
    
    init() {
        print("Initialized...")
    }
    var totalPages: Int {
        return storyPages.count
        }
    
    var totalUnlockedChapters: Int {
        return chapterSelectionPages.count
    }
    
    
    func addPage(page: StoryPayload) {
        self.storyPages.append(page)
    }
    
    //...unlock chapter by adding it to the side nav.
    func unlockChapter(page: StoryPayload) {
        self.chapterSelectionPages.append(page)
    }
}

