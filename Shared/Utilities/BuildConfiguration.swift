//
//  BuildConfiguration.swift
//  Tales of Covarnius
//
//  Created by Erik Mikac on 5/1/22.
//

import Foundation

enum Environment: String { // 1
    case debugDevelopment = "Debug Development"
    case releaseDevelopment = "Release Development"

    case debugStaging = "Debug Staging"
    case releaseStaging = "Release Staging"

    case debugProduction = "Debug Production"
    case releaseProduction = "Release Production"
}

class BuildConfiguration { // 2
    static let shared = BuildConfiguration()
    
    var environment: Environment
    
    init() {
        let currentConfiguration = Bundle.main.object(forInfoDictionaryKey: "Configuration") as! String
        
        environment = Environment(rawValue: currentConfiguration)!
    }
}
