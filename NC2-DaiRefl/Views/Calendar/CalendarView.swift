//
//  CalendarView.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 26/07/22.
//

import SwiftUI

struct CalendarView: View {
    
    var body: some View {
        List (0...20, id: \.self) { index in
            Text("\(index)")
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}

