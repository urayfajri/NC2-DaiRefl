//
//  Globals.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 28/07/22.
//

import Foundation

struct Globals {
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter
    }()
}
