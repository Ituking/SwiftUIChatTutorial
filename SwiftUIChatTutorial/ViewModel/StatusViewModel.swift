//
//  StatusViewModel.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/18.
//

import SwiftUI

class StatusViewModel: ObservableObject {
    @Published var status: UserStatus = .notCanfigured
    
    func updateStatus(_ status: UserStatus) {
        self.status = status
    }
}

enum UserStatus: Int, CaseIterable {
    case notCanfigured
    case available
    case busy
    case school
    case movies
    case work
    case batteryLow
    case meeting
    case gym
    case sleeping
    case urgentCallsOnly
    
    var title: String {
        switch self {
        case .notCanfigured: return "Click here to update your status"
        case .available: return "Available"
        case .busy: return "Busy"
        case .school: return "At school"
        case .movies: return "At movies"
        case .work: return "At work"
        case .batteryLow: return "Battery about to die"
        case .meeting: return "In a meeting"
        case .gym: return "At the gym"
        case .sleeping: return "Sleeping"
        case .urgentCallsOnly: return "Urgent calls only"
        }
    }
}
