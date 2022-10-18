//
//  StatusViewModel.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/18.
//

import Foundation

enum StatusViewModel: Int, CaseIterable {
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
        case .notCanfigured:
        case .available:
        case .busy:
        case .school:
        case .movies:
        case .work:
        case .batteryLow:
        case .meeting:
        case .gym:
        case .sleeping:
        case .urgentCallsOnly:
        }
    }
}
