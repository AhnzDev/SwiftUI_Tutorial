//
//  Profile.swift
//  Landmarks
//
//  Created by Jihoon on 2/12/25.
//  Copyright © 2025 Apple. All rights reserved.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    
    static let `default` = Profile(username: "g_kumar")
    
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        
        var id: String { rawValue }
    }
}
