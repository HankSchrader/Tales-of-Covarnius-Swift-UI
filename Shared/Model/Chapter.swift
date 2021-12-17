//
//  RootViewModel.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/4/21.
//

import SwiftUI

struct Chapter {
    
    var pageName: String
    var chapterTitle: String
    var order: Int
    
    init(pageName: String, chapterTitle: String, order: Int) {
        self.pageName = pageName
        self.chapterTitle = chapterTitle
        self.order = order
    }
}
