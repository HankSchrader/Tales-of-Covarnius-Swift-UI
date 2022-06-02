//
//  RootViewModel.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/4/21.
//

import SwiftUI

struct Chapter: Identifiable {
    var id: UUID
    var pageName: String
    var chapterTitle: String
    var order: Int
    
    init(pageName: String, chapterTitle: String, order: Int) {
        id = UUID()
        self.pageName = pageName
        self.chapterTitle = chapterTitle
        self.order = order
    }
}
